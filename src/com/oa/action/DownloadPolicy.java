package com.oa.action;

import java.io.ByteArrayInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

import com.oa.model.Policy;
import com.opensymphony.xwork2.ActionSupport;

public class DownloadPolicy extends ActionSupport {
	private String downFileName;
	private Policy policy;

	public Policy getPolicy() {
		return policy;
	}

	public void setPolicy(Policy policy) {
		this.policy = policy;
	}

	public String getDownFileName() {
		if (policy == null) {
			downFileName = "您要下载的文件不存在";
			return downFileName;
		}
		downFileName = policy.getFilename();

		try {

			downFileName = new String(downFileName.getBytes(), "ISO8859-1");

		} catch (UnsupportedEncodingException e) {

			e.printStackTrace();

		}

		return downFileName;
	}

	public InputStream getInputStream() {
		System.out.println("获得文件路径:" + policy.getFilepath());
		System.out.println("获得文件名称:" + policy.getFilename());
		if (policy.getFilename() == null)
			return new ByteArrayInputStream("您要下载的文件不存在".getBytes());
		try {
			return new java.io.FileInputStream(policy.getFilepath());
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return new ByteArrayInputStream("您要下载的文件不存在".getBytes());
	}

	public String execute() {
		return "success";
	}
}
