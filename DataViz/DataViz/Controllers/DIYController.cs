using System;
using System.IO;
using System.Web.Mvc;

namespace DataViz.Controllers
{
	public class DIYController : Controller
	{
		public ActionResult DIY_Index()
		{
			return View ();
		}
		public ActionResult DIY1_Index()
		{
			return View ();
		}
		public ActionResult DIY1_Process()
		{
			return View ();
		}
		public ActionResult DIY1_Result()
		{
			return View ();
		}

		[HttpPost] 
		public string DIY1_savaJson()
		{
			string fileName = null;
			fileName = DateTime.Now.ToString ("yyyyMdhhmmssfff")+".json";
			string path = Path.Combine( Server.MapPath( "~/Content/Json" ), fileName );

			using (FileStream outputStream = new FileStream (path, FileMode.Create)) 
			{
				
				using (Stream inputStream = Request.InputStream){
					try {
						const int bufferSize = 4096;
						int len;
						byte[] buffer = new byte[bufferSize];

						while ( (len = inputStream.Read(buffer, 0, bufferSize)) > 0)
						{
							outputStream.Write(buffer, 0, len);
						}  
						return fileName;
					} catch (Exception ex) {
						Console.WriteLine (ex.Message);
						return null;
					}
				}
			}
		}

		[HttpPost] 
		public void DIY1_changeJson()
		{
			string fileName = Request.QueryString["fileName"];
			string FilePathResult = Path.Combine( Server.MapPath( "~/Content/Json" ), fileName );
			using (FileStream outputStream = new FileStream (FilePathResult, FileMode.Create)) 
			{

				using (Stream inputStream = Request.InputStream){
					try {
						const int bufferSize = 4096;
						int len;
						byte[] buffer = new byte[bufferSize];

						while ( (len = inputStream.Read(buffer, 0, bufferSize)) > 0)
						{
							outputStream.Write(buffer, 0, len);
						}  

					} catch (Exception ex) {
						Console.WriteLine (ex.Message);

					}
				}
			}
		}

		public ActionResult DIY2_Index()
		{
			return View ();
		}
		public ActionResult DIY2_Result()
		{
			return View ();
		}
		public ActionResult DIY2_Process()
		{
			return View ();
		}
	}
}
