package basket;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Basket_ok
 */
@WebServlet("/Basket_ok")
public class Basket_ok extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Basket_ok() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter writer = response.getWriter();
		HttpSession session = request.getSession();
		// String product = request.getParameter("product");
		String product = request.getParameter("product") == null ? "" : request.getParameter("product");	// null일때의 문제 처리
		// 상품저장
		List list = (List)session.getAttribute("productList");
		
		if(list == null){
			list = new ArrayList();
		}
		
		list.add(product);
		session.setAttribute("productList", list);
		writer.println("<script>alert('"+product+"상품이 장바구니에 추가되었습니다'); location.href='10_basket.jsp';</script>");
	}

}
