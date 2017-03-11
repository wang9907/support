package com.support;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class BatchFile {
	// 日记记录器
	public static Logger log = Logger.getLogger(GenerateFile.class);
	// 总的动作数
	public static final String TEMPLATE_DIRECTORY = "D:\\lixiao\\template";
	public static final String ID_FILE = "D:\\lixiao\\idfile.txt";

	public static void main(String[] args) {
		File idFile = new File(ID_FILE);
		try {
			List<Map<String, String>> idlist = new ArrayList<Map<String, String>>();
			BufferedReader reader = new BufferedReader(new InputStreamReader(
					new FileInputStream(idFile)));
			String line = null;
			Map<String, String> map = null;
			while ((line = reader.readLine()) != null) {
				map = new HashMap<String, String>();
				map.put("name", line.split("\\t")[0]);
				map.put("url", line.split("\\t")[1]);
				idlist.add(map);
			}
			reader.close();

			File directory = new File(TEMPLATE_DIRECTORY);
			File[] files = directory.listFiles();
			// Writer writer = new StringWriter();
			for (File f : files) {
				BufferedReader r = new BufferedReader(new InputStreamReader(
						new FileInputStream(f)));
				String l = null;
				String sb = "";
				while ((l = r.readLine()) != null) {
					sb += l+"\r\n" ;
				}
				r.close();
				int i = 1;
				for (Map<String, String> m : idlist) {
					String name = m.get("name");
					String url = m.get("url");
					String result = sb.replace("TTnameTT", name)
							.replace("TTtupianTT", url);
					log.info(result);
					log.info(f.getPath());
					String newfile = f.getParent()+"/"
							+ f.getName()
									.substring(0, f.getName().indexOf("."))
							+ "-" + i + ".html";
					log.info(newfile);
					BufferedWriter writer = new BufferedWriter(
							new OutputStreamWriter(
									new FileOutputStream(newfile)));
					writer.write(result);
					writer.flush();
					writer.close();
					i++;
				}
			}
		} catch (Exception e) {

		}
	}
}
