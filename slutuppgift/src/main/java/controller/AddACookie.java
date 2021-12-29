package controller;

import java.io.IOException;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.GettheWeather;
import model.weatherBean;

/**
 * Servlet implementation class AddACookie
 */
@WebServlet("/AddACookie")
public class AddACookie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddACookie() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		Cookie ck[] = request.getCookies();
		
		for (int i = 0; i < ck.length; i++) {
			Cookie cookie = ck[i];
			if(cookie.getName().equals("city")) {
				String cookieSplit[] = cookie.getValue().split("0");
				
				
				weatherBean wBean = new weatherBean(cookieSplit[0], cookieSplit[1]);
				
				
				GettheWeather.getWeather(wBean);

				request.setAttribute("wBean", wBean);
				
				
				

				RequestDispatcher rd = request.getRequestDispatcher("showWeather.jsp");
				rd.forward(request, response);
				
				
			}
			
		}
		
		
		/*String value = request.getParameter("city");
		Cookie cookie = new Cookie("value", value);
		
		response.addCookie(cookie);*/
	}

}
