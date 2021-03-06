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

import freemarker.template.Configuration;
import freemarker.template.Template;

public class GenerateFile {
	// 日记记录器
	public static Logger log = Logger.getLogger(GenerateFile.class);
	// 总的动作数
	public static final int COUNT = 7;
	public static List<Integer> list = new ArrayList<Integer>();
	public static String FILE_NAME_PREFIX = "1116";
	static {
		for (int i = 1; i <= COUNT; i++) {
			list.add(i);
		}
	}

	public static void main(String[] args) {
		File idFile = new File("D:\\lixiao\\idfile.txt");
		Configuration configuration = new Configuration(
				Configuration.VERSION_2_3_25);
		Template template;
		try {
			List<Map<String,String>> idlist = new ArrayList<Map<String,String>>();
			BufferedReader reader = new BufferedReader(new InputStreamReader(
					new FileInputStream(idFile)));
			String line = null;
			Map<String,String> map = null;
			while ((line = reader.readLine()) != null) {
				map = new HashMap<String, String>();
				map.put("id", line.split("\\t")[0]);
				map.put("name", line.split("\\t")[1]);
				idlist.add(map);
			}
			reader.close();

			configuration.setClassForTemplateLoading(configuration.getClass(),
					"/");
			template = configuration.getTemplate("template.ftl");
			// Writer writer = new StringWriter();
			for (Map<String,String> m : idlist) {
				String id = m.get("id");
				String name = m.get("name");
				Map<String, Object> dataModel = new HashMap<String, Object>();
				File output = new File("D:\\lixiao\\html\\" + FILE_NAME_PREFIX + "("
						+ id + ").html");
				FileOutputStream fileOutputStream = new FileOutputStream(output);
				BufferedWriter writer = new BufferedWriter(
						new OutputStreamWriter(fileOutputStream));
				dataModel.put("list", list);
				dataModel.put("id", Integer.parseInt(id));
				dataModel.put("name", name);
				template.process(dataModel, writer);
				//log.info(writer.toString());
				fileOutputStream.close();
				writer.close();
			}
		} catch (Exception e) {
			log.error("", e);
		}

	}

}
