package com.oa.model;

import com.opensymphony.xwork2.ActionSupport;

public class Dailywork extends ActionSupport {
	private	int id;
	private String date;
	private String start_time;
	private String end_time;
	private String repeat_time;
	private String topic;
	private String data;
	private String remind;
	private boolean standard;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public String getRepeat_time() {
		return repeat_time;
	}
	public void setRepeat_time(String repeat_time) {
		this.repeat_time = repeat_time;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getRemind() {
		return remind;
	}
	public void setRemind(String remind) {
		this.remind = remind;
	}
	public boolean isStandard() {
		return standard;
	}
	public void setStandard(boolean standard) {
		this.standard = standard;
	}
	

}
