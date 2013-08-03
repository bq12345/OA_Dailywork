package com.oa.action;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.oa.model.Policy;
import com.oa.model.Type;
import com.oa.service.PolicyService;
import com.oa.service.TypeService;
import com.opensymphony.xwork2.ActionSupport;

public class PolicyAction extends ActionSupport{
	private Policy policy;
	private PolicyService policyservice;
	private TypeService typeservice;
	private int id;
	private List<Policy> list;
	private List<Type> typeList;
	private String name;
	private File image; // 上传的文件
	private String imageFileName; // 文件名称
	private String imageContentType; // 文件类型
	
	public Policy getPolicy() {
		return policy;
	}

	public void setPolicy(Policy policy) {
		this.policy = policy;
	}

	public PolicyService getPolicyservice() {
		return policyservice;
	}

	public void setPolicyservice(PolicyService policyservice) {
		this.policyservice = policyservice;
	}

	public TypeService getTypeservice() {
		return typeservice;
	}

	public void setTypeservice(TypeService typeservice) {
		this.typeservice = typeservice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Policy> getList() {
		return list;
	}

	public void setList(List<Policy> list) {
		this.list = list;
	}

	public List<Type> getTypeList() {
		return typeList;
	}

	public void setTypeList(List<Type> typeList) {
		this.typeList = typeList;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
	public String addPolicy() throws IOException {
		String realpath = ServletActionContext.getServletContext().getRealPath("/upload");
		if (image != null) {
			File savefile = new File(new File(realpath), imageFileName);
			if (!savefile.getParentFile().exists())
				savefile.getParentFile().mkdirs();
			FileUtils.copyFile(image, savefile);
			System.out.println("文件上传成功");
		}
			policy.setFilepath(realpath+"\\"+getImageFileName());
			policy.setFilename(getImageFileName());
			policyservice.addPolicy(policy);
		return SUCCESS;
	}
	
	public String queryPolicy(){
		
		if(policyservice.queryPolicy()!=null){
			list=policyservice.queryPolicy();
			typeList=typeservice.queryType();
			return SUCCESS;
		}
		else{
		return ERROR;
		}
	}
	public String updatePolicy() throws IOException{
		String realpath = ServletActionContext.getServletContext().getRealPath("/upload");
		if (policyservice.getPolicy(policy.getId()) != null) {
			if (image != null) {
				File savefile = new File(new File(realpath), imageFileName);
				
				if (!savefile.getParentFile().exists())
					savefile.getParentFile().mkdirs();
				FileUtils.copyFile(image, savefile);
				System.out.println("文件上传成功");
			}
			policy.setFilepath(realpath+"\\"+getImageFileName());
			policy.setFilename(getImageFileName());
			policyservice.updatePolicy(policy);
			return SUCCESS;
		} else {
			return INPUT;
		}
	}
	public String delPolicy(){
		if(policyservice.getPolicy(getId())!=null){
			policyservice.delPolicy(policyservice.getPolicy(getId()));
			return SUCCESS;
		}
		else{
		return INPUT;
		}
	}
	
	public String changePolicy(){
		if(policyservice.getPolicy(getId())!=null){
			policy=policyservice.getPolicy(getId());
			typeList=typeservice.queryType();
			return SUCCESS;
		}
		else{
		return INPUT;
		}
		
	}	
	
}
