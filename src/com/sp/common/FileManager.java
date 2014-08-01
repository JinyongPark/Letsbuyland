package com.sp.common;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLConnection;
import java.util.Calendar;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

@Service("fileManager")
public class FileManager {

	// path : ������ ������ ���
	// ���� : ������ ����� ���ο� ���ϸ�
	public String doFileUpload(byte[] bytes, String originalFilename, String path) throws Exception {
		String newFilename = null;

		if(bytes == null)
			return null;
		
		// Ŭ���̾�Ʈ�� ���ε��� ������ �̸�
		if(originalFilename.equals(""))
			return null;
		
		// Ȯ����
		String fileExt = originalFilename.substring(originalFilename.lastIndexOf("."));
		if(fileExt == null || fileExt.equals(""))
			return null;
		
		// ������ ������ ���ο� ���ϸ��� �����.
		newFilename = String.format("%1$tY%1$tm%1$td%1$tH%1$tM%1$tS", 
				         Calendar.getInstance());
		newFilename += System.nanoTime();
		newFilename += fileExt;
		
		// ���ε��� ��ΰ� �������� �ʴ� ��� ������ ���� �Ѵ�.
		File dir = new File(path);
		if(!dir.exists())
			dir.mkdirs();
		
		String pathname = path + File.separator + newFilename;
		
		FileOutputStream fos = new FileOutputStream(pathname);
		fos.write(bytes);
		fos.close();
		
		return newFilename;
	}

	public String doFileUpload(InputStream is, String originalFilename, String path) throws Exception {
		String newFilename = null;

		// Ŭ���̾�Ʈ�� ���ε��� ������ �̸�
		if(originalFilename==null||originalFilename.equals(""))
			return null;
		
		// Ȯ����
		String fileExt = originalFilename.substring(originalFilename.lastIndexOf("."));
		if(fileExt == null || fileExt.equals(""))
			return null;
		
		// ������ ������ ���ο� ���ϸ��� �����.
		newFilename = String.format("%1$tY%1$tm%1$td%1$tH%1$tM%1$tS", 
				         Calendar.getInstance());
		newFilename += System.nanoTime();
		newFilename += fileExt;
		
		// ���ε��� ��ΰ� �������� �ʴ� ��� ������ ���� �Ѵ�.
		File dir = new File(path);
		if(!dir.exists())
			dir.mkdirs();
		
		String pathname = path + File.separator + newFilename;
		
		byte[] b=new byte[1024];
		int size=0;
		FileOutputStream fos = new FileOutputStream(pathname);
		
		while((size=is.read(b))!=-1) {
			fos.write(b, 0, size);
		}
		
		fos.close();
		is.close();
		
		return newFilename;
	}
	
	// ���� �ٿ�ε�
	// saveFilename : ������ ����� ���ϸ�
	// originalFilename : Ŭ���̾�Ʈ�� ���ε��� ���ϸ�
	// path : ������ ����� ���
	public boolean doFileDownload(String saveFilename, String originalFilename, String path, HttpServletResponse response) {
		String pathname = path + File.separator + saveFilename;
		
        try {
    		if(originalFilename == null || originalFilename.equals(""))
    			originalFilename = saveFilename;
        	originalFilename = new String(originalFilename.getBytes("euc-kr"),"8859_1");
        } catch (UnsupportedEncodingException e) {
        }

	    try {
	        File file = new File(pathname);

	        if (file.exists()){
	            byte readByte[] = new byte[4096];

	            response.setContentType("application/octet-stream");
				response.setHeader(
						"Content-disposition",
						"attachment;filename=" + originalFilename);

	            BufferedInputStream  fin  = new BufferedInputStream(new FileInputStream(file));
	            //javax.servlet.ServletOutputStream outs =	response.getOutputStream();
	            OutputStream outs = response.getOutputStream();
	            
	   			int read;
	    		while ((read = fin.read(readByte, 0, 4096)) != -1)
	    				outs.write(readByte, 0, read);
	    		outs.flush();
	    		outs.close();
	            fin.close();
	            
	            return true;
	        }
	    } catch(Exception e) {
	    }
	    
	    return false;
	}
	
	// ���� ���� ����
	public void doFileDelete(String filename, String path) 
	        throws Exception {
		String pathname = path + File.separator + filename;
		File file = new File(pathname);
        if (file.exists())
           file.delete();
	}

	// ���� ����
	public long getFilesize(String pathname) {
		long size=-1;
		
		File file = new File(pathname);
		if (! file.exists())
			return size;
		
		size=file.length();
		
		return size;
	}
	
	// ���� Ÿ��
	public String getFiletype(String pathname) {
		String type="";
		try {
			URL u = new URL("file:"+pathname);
		    URLConnection uc = u.openConnection();
		    type = uc.getContentType();
		} catch (Exception e) {
		}
		
	    return type;
	}
}
