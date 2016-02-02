
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace DataViz
{
	public class MvcApplication : System.Web.HttpApplication
	{
		public static void RegisterRoutes (RouteCollection routes)
		{
			routes.IgnoreRoute ("{resource}.axd/{*pathInfo}");

			routes.MapRoute (
				"Default",
				"{controller}/{action}/{id}",
				new { controller = "Home", action = "Index", id = "" }
			);

		}

		public static void RegisterGlobalFilters (GlobalFilterCollection filters)
		{
			filters.Add (new HandleErrorAttribute ());
		}

		System.Timers.Timer _deleteTempFile;

		void OnTimeEvent_DelTempFile(object sender,System.Timers.ElapsedEventArgs e)
		{
			DeleteTemp.Delete_TempFile("Content", 0, "*");
			DeleteTemp.Delete_TempFile("Content/Json", 0, "*");
			_deleteTempFile.Interval = 1000 * 60 * 60 * 48;
			_deleteTempFile.Enabled = true;
		}

		protected void Application_Start ()
		{

			_deleteTempFile = new System.Timers.Timer(1000 * 60 * 1);
			_deleteTempFile.Elapsed += new System.Timers.ElapsedEventHandler(OnTimeEvent_DelTempFile);
			_deleteTempFile.Enabled = true;
			AreaRegistration.RegisterAllAreas ();
			RegisterGlobalFilters (GlobalFilters.Filters);
			RegisterRoutes (RouteTable.Routes);
		}

	}
}
