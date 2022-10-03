package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 매핑 - /MyServlet 요청이 들어오면 이 서블릿을 실행
// 서블릿 버전3.0 이상부터 가능
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		// 연산
		int result = num1 + num2;
		
		// Get방식으로 요청하면 html로 응답할거라는 말이다.
		response.setContentType("text/html; charset=UTF-8");
		// 빽족에서는 응답할 데이터를 생성해서 응답을 해줘야 한다.
		// 응답할 데이터를 작성하기 위한 PrintWriter 생성한 것이다.
		// 응답을 하기 위해서 데이터를 작성해야해서 response.getWriter를 받아온것이다.
		PrintWriter out = response.getWriter(); 
		
		out.print("<html><body><p>결과 : ");
		out.print(result);
		out.print("</p></body></html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
