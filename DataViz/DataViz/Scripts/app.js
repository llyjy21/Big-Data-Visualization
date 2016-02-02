var openFile = function(event) {
	
	var input = event.target;
	var reader = new FileReader();
	reader.onload = function(){
      	var csvObject = CSVToArray(reader.result);
		var latName = getColName(csvObject, ['lat', 'Lat', 'LAT', 'latitude', 'Latitude', 'LATITUDE']);
		var lonName = getColName(csvObject, ['lng', 'Lng', 'LNG', 'lon', 'Lon', 'LON', 'longitude', 'Longitude', 'LONGITUDE']);
		var massagedData = massageData(csvObject);

		massagedData = latLonColumnsToNumbers(massagedData, latName, lonName);

		GeoJSON.parse(massagedData, {
			Point: [latName, lonName]
		}, function(geojson) {

			saveJsonData(JSON.stringify(geojson),csvObject,0);

			$.ajax({
				url: 'https://api.github.com/gists',
				type: "POST",
				cache: false,
				processData: false,
				data: JSON.stringify({
					"description": "GEOJSON created by http://csv.togeojson.com",
					"public": true,
					"files": {
						"csv-to-geojson.geojson": {
							"content": JSON.stringify(geojson)
						}
					}
				})

			}).done(function(msg) {
				$("#gistLink").attr("href", msg.html_url);
				$("#gistLinkContainer").show();
			});
		});
    };
    reader.readAsText(input.files[0]);
};

var openFile2 = function(event)
{
	var input = event.target;
	var reader = new FileReader();
	reader.onload = function(){
      	var csvObject = reader.result;
		saveJsonData(csvObject,csvObject,1);
    };
    reader.readAsText(input.files[0]);
};

function massageData(data) 
{
	if (data) {
		if( data.length > 2){
			var returnData = [];
		var dataNoHeader = $.extend(true, [], data);

		dataNoHeader.splice(0, 1);
		dataNoHeader.forEach(function(item) {
			var returnItem = {}, i = 0;
			data[0].forEach(function(columnName) {
				returnItem[columnName] = item[i];
				i++;
			}, this);
			returnData.push(returnItem);
		}, this);
		return returnData;
		}	
	}
	return null;
}

function latLonColumnsToNumbers(data, latName, lonName) 
{
	data.forEach(function(item) {
		if(item.hasOwnProperty(latName)) {
			item[latName] = parseFloat(item[latName]);
		};
		if(item.hasOwnProperty(lonName)) {
			item[lonName] = parseFloat(item[lonName]);
		};
	});
	return data;
}

function getColName(data, possibleColumnNames) 
{
	if (data && data.length > 2) {
		for (var i = 0; i < data[0].length; i++) {
			if (possibleColumnNames.indexOf(data[0][i]) !== -1) {
				
				return data[0][i];
			}
		}
	}
}

function getCsvHeadName(data) 
{
	
	if (data && data.length > 2) {

		var headStr = data.substring(0, data.toString().indexOf('\n')-1);
		var headArray = headStr.toString().split(',');
		var str = "col0="+headArray[0]+"&";
		for (var i = 1; i < headArray.length; i++) {
			
			if(i == headArray.length-1)
			{
				str+="col"+i+"="+headArray[i];

			}else
			{
				str+="col"+i+"="+headArray[i]+"&";
			}
		}
		return str;
	}
}

function getJsonHeadName(data) 
{
	var str;
	if (data && data.length > 2) {
		str = "col0="+data[0][0]+"&";
		for (var i = 1; i < data[0].length; i++) {
			if(i == data[0].length-1)
			{
				str+="col"+i+"="+data[0][i];

			}else
			{
				str+="col"+i+"="+data[0][i]+"&";
			}
		}
		return str;
	}
}

function saveJsonData(data,csvObject,flag) {
	$.ajax({
		url: '../DIY/DIY1_savaJson',
		type: "POST",
		data: data,
		contentType: "application/json", 
    	datatype: "html",
    	success: function (response) {
    		if(flag == 0) 
    		{
    			var hrefPath = "/DIY/DIY1_Process?"+getJsonHeadName(csvObject)+"&fileName="+response;
    		window.location.href = hrefPath;
    		}else{
    			var hrefPath = "/DIY/DIY2_Process?"+getCsvHeadName(csvObject)+"&fileName="+response;
    		window.location.href = hrefPath;
    		}
    	},
    	error: function (){
    		window.location.href = "/Shared/Error";
    	}
	});
}