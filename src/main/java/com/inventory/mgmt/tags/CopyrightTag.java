package com.inventory.mgmt.tags;

import java.io.IOException;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class CopyrightTag extends SimpleTagSupport{
	@Override
	public void doTag() throws JspException,IOException{
		try {
	        JspWriter out = getJspContext().getOut();
	        out.print("© 2024 Kexin Zhu. All rights reserved.");
		} catch (IOException e) {
			e.getStackTrace();
		}
	}
}
