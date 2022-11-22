package basket;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class Payment
 */
@WebServlet("/Payment")
public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Payment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		int sum = 0;
		HttpSession session = request.getSession();
		List<String> list = (List)session.getAttribute("productList");
		PrintWriter writer = response.getWriter();

		if (list != null) {
			for (String product : list) {
				if ("그래픽카드".equals(product)) {
					sum += 1300000;
				} else if ("닌텐도".equals(product)) {
					sum += 400000;
				} else if ("맥북프로".equals(product)) {
					sum += 3800000;
				} else if ("34인치모니터".equals(product)) {
					sum += 500000;
				} else if ("페라리로마".equals(product)) {
					sum += 320000000;
				} else if ("집".equals(product)) {
					sum += 800000000;
				}
			}
			writer.println("<script>if(confirm('"+sum+"원을 결제하시겠습니까?')) {alert('결제가 성공적으로 완료되었습니다.\\n장바구니를 초기화합니다');location.href = 'Invalid';	} else {alert('돈이 없군요?...');	history.back();}</script>");
		} else {
			writer.println("<script>alert('결제할 상품이 없습니다'); history.back();</script>");
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
}
}
