function getUrlParams() 
		{
			var search = window.location.search;
	        var tmparray = search.substr(1, search.length).split("&");
	        var array = new Array;
			if (tmparray != null) {
				for (var i = 0; i < tmparray.length; i++) 
				{
					var reg = /[=|^==]/;
					var set1 = tmparray[i].replace(reg, '&');
					var tmpStr2 = set1.split('&');
					array[i] = tmpStr2[1];
				}
	        }
			return array;
}

function parseCSV(data,Y,X,P1,rowSeperator) {
	var rows = data.toString().split(rowSeperator || '\n');
	var json = {};
	rows.slice(1).forEach(function (row) {
		var columns = row.split(',');
		var sum = parseInt(columns[Y]||0, 10)
		var year = parseInt(columns[X], 10);
		var month = parseInt(columns[P1], 10);
		if (year && month) {
			json[year] = json[year] || [];
			json[year][month-1] = sum;
		}
	});
	return json;
}

function changeJsonData(data,fileName) {
	$.ajax({
		url: '../DIY/DIY1_changeJson?fileName='+fileName,
		type: "POST",
		data: data,
		contentType: "application/json", 
    	datatype: "html",
    	success: function () {
    		var hrefPath = "/DIY/DIY2_Result?fileName="+fileName;
    		window.location.href = hrefPath;
    	},
    	error: function (){
    		window.location.href = "/Shared/Error";
    	}
	});
}