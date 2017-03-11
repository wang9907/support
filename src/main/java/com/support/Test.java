package com.support;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class Test {

	public static final String ID_FILE = "D:\\lixiao\\idfile.txt";
	
	public static void main(String[] args) throws Exception {
		File file = new File(ID_FILE);
		System.out.println("AbsolutePath"+file.getAbsolutePath());
		System.out.println("CanonicalPath"+file.getCanonicalPath().toLowerCase());
		System.out.println("FreeSpace"+file.getFreeSpace());
		System.out.println("Name"+file.getName());
		System.out.println("Parent"+file.getParent());
		System.out.println("Path"+file.getPath());
		System.out.println("TotalSpace"+file.getTotalSpace());
		System.out.println("UsableSpace"+file.getUsableSpace());
		System.out.println("AbsoluteName"+file.getAbsoluteFile().getName());
		System.out.println("CanonicalName"+file.getCanonicalFile().getName());
		System.out.println("arentFileName"+file.getParentFile().getName());
		System.out.println("AbsoluteName"+file.getAbsoluteFile().getName());
	}

}
