using System;

namespace DataViz
{
	public class DeleteTemp
	{
		/// <param name="path">删除的文件的路径</param>
		/// <param name="date">删除某一个时间点以前的文件</param>
		/// <param name="fileType">文件类型</param>
		public static void Delete_TempFile(string path,int datePoint,string fileType)
		{ 
			System.IO.DirectoryInfo dirInfo = new System.IO.DirectoryInfo(path);
			//DateTime time = DateTime.Now.AddDays(-datePoint);
			//该目录存在且有临时文件则进行删除处理
			if (dirInfo.Exists && dirInfo.GetFiles().Length > 0)
			{
				System.IO.FileInfo[] files = dirInfo.GetFiles();
				for (int i = 0; i < files.Length; i++)
				{
					if (files[i].Exists)
					{
						try
						{
							//将该文件设置为临时文件
							System.IO.File.SetAttributes(path + "//" + files[i].Name, System.IO.FileAttributes.Temporary);
							//删除指定的文件
							System.IO.File.Delete(path + "//" + files[i].Name);

						}catch(System.IO.IOException ex)
						{
							throw ex;
						}
					}
				}
			}
		}
	}
}

