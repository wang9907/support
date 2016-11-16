package com.support;

import java.io.StringWriter;
import java.io.Writer;
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
	static{
		for(int i = 1; i <= COUNT; i++){
			list.add(i);
		}
	}

	public static void main(String[] args) {
		Configuration configuration = new Configuration(Configuration.VERSION_2_3_25);
		Template template;
		try{
			configuration.setClassForTemplateLoading(configuration.getClass(), "/");
			template = configuration.getTemplate("template.ftl");
			Writer writer = new StringWriter();
			Map<String, Object> dataModel = new HashMap<String, Object>();
			dataModel.put("list", list);
			dataModel.put("id", 2);
			template.process(dataModel, writer);
			log.info(writer.toString());
		}catch(Exception e){
			log.error("", e);
		}

	}

}
