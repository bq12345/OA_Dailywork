package com.oa.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.oa.model.Notice;
import com.oa.service.NoticeService;
import com.opensymphony.xwork2.ActionSupport;

public class NoticeAction extends ActionSupport {
	private Notice notice;
	private NoticeService noticeservice;
	private int id;
	private File image; // 上传的文件
	private String imageFileName; // 文件名称
	private String imageContentType; // 文件类型
	
	private List<Notice> list;

	public Notice getNotice() {
		return notice;
	}

	public void setNotice(Notice notice) {
		this.notice = notice;
	}

	public NoticeService getNoticeservice() {
		return noticeservice;
	}

	public void setNoticeservice(NoticeService noticeservice) {
		this.noticeservice = noticeservice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Notice> getList() {
		return list;
	}

	public void setList(List<Notice> list) {
		this.list = list;
	}

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}

	/*
	 * 下面是处理请求的方法
	 */
	public String addNotice() throws IOException {
		String realpath = ServletActionContext.getServletContext().getRealPath("/upload");
		if (image != null) {
			File savefile = new File(new File(realpath), imageFileName);
			if (!savefile.getParentFile().exists())
				savefile.getParentFile().mkdirs();
			FileUtils.copyFile(image, savefile);
			System.out.println("文件上传成功");
		}
			notice.setFilepath(realpath+"\\"+getImageFileName());
			notice.setFilename(getImageFileName());
			noticeservice.addNotice(notice);
		return SUCCESS;
	}

	public String queryNotice() {

		if (noticeservice.queryNotice() != null) {
			list = noticeservice.queryNotice();
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public String updateNotice() throws IOException {
		String realpath = ServletActionContext.getServletContext().getRealPath("/upload");
		if (noticeservice.getNotice(notice.getId()) != null) {
			if (image != null) {
				File savefile = new File(new File(realpath), imageFileName);
				
				if (!savefile.getParentFile().exists())
					savefile.getParentFile().mkdirs();
				FileUtils.copyFile(image, savefile);
				System.out.println("文件上传成功");
			}
			notice.setFilepath(realpath+"\\"+getImageFileName());
			notice.setFilename(getImageFileName());
			noticeservice.updateNotice(notice);
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	public String delNotice() {
		if (noticeservice.getNotice(getId()) != null) {
			noticeservice.delNotice(noticeservice.getNotice(getId()));
			return SUCCESS;
		} else {
			return INPUT;
		}
	}

	public String changeNotice() {
		if (noticeservice.getNotice(getId()) != null) {
			notice = noticeservice.getNotice(getId());
			return SUCCESS;
		} else {
			return INPUT;
		}

	}
	public String queryNoticeStandard() {

		if (noticeservice.queryNotice(1) != null) {
			list = noticeservice.queryNotice(1);
			return SUCCESS;
		} else {
			return ERROR;
		}
	}
	

}
