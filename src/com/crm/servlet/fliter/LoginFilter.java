package com.crm.servlet.fliter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "LoginFilter")
public class LoginFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        chain.doFilter(req, resp);
        HttpServletRequest requ=(HttpServletRequest)req;
        HttpServletResponse resps=(HttpServletResponse)resp;
        HttpSession session=requ.getSession(true);
        if (session.getAttribute("user.userCode")==null){
            resps.sendRedirect("/jsp/login.jsp");
        }else{
            chain.doFilter(req,resp);
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
