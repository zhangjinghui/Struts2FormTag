package com.zjh.struts2formtag.action;

import java.util.List;

public class UserAction {
	private Integer id;
	private String username;
	private String password;
	private String desc;
	private boolean married;
	private String gender;
	private List<String> city;
	private Integer age;

	public String login() {
		username = "修改栈顶元素";
		return "index";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public boolean isMarried() {
		return married;
	}

	public void setMarried(boolean married) {
		this.married = married;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public List<String> getCity() {
		return city;
	}

	public void setCity(List<String> city) {
		this.city = city;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return "UserAction [id=" + id + ", username=" + username
				+ ", password=" + password + ", desc=" + desc + ", married="
				+ married + ", gender=" + gender + ", city=" + city + ", age="
				+ age + "]";
	}

}
