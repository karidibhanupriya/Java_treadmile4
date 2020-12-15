package com.cts.controller;

public class LoginService {
	
	public static boolean validate(LoginBean bean)	{
		if(bean.getUserName().equals(bean.getPassword()))
			return true;
		return false;
	}
	

}
