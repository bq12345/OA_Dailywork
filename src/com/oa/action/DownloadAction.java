package com.oa.action;

import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

import com.oa.model.Notice;
import com.opensymphony.xwork2.ActionSupport;

public class DownloadAction extends ActionSupport {
	private String downFileName;
	private Notice notice;

	public Notice getNotice() {
		return notice;
	}

	public void setNotice(Notice notice) {
		this.notice = notice;
	}

	public String getDownFileName() {
		if (notice == null) {
			downFileName = "��Ҫ���ص��ļ�������";
			return downFileName;
		}
		downFileName = notice.getFilename();

		try {

			downFileName = new String(downFileName.getBytes(), "ISO8859-1");

		} catch (UnsupportedEncodingException e) {

			e.printStackTrace();

		}

		return downFileName;
	}

	public InputStream getInputStream() {
		System.out.println("����ļ�·��:" + notice.getFilepath());
		System.out.println("����ļ�����:" + notice.getFilename());
		if (notice.getFilename() == null)
			return new ByteArrayInputStream("��Ҫ���ص��ļ�������".getBytes());
		try {
			return new java.io.FileInputStream(notice.getFilepath());
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return new ByteArrayInputStream("��Ҫ���ص��ļ�������".getBytes());
	}

	public String execute() {
		return "success";
	}
}
