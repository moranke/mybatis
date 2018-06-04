package control;

import net.sf.json.JSONArray;
import serviceImp.MessageServiceImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by moran on 2018/6/410:52
 * Description:
 */
public class SearchServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        MessageServiceImp messageServiceImp=new MessageServiceImp();
        JSONArray jsonArray=messageServiceImp.getContents(request.getParameter("keyWord"));
        System.out.println(jsonArray);
        response.getWriter().write(jsonArray.toString());
//        request.getRequestDispatcher("/WEB-INF/view/front/talk.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request,response);
    }
}