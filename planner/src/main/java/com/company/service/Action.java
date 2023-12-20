package com.company.service;

import java.io.IOException;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface Action{
public void execu(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException;
}