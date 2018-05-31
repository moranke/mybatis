package control;

import serviceImp.MessageServiceImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
/**
 * Created by moran on 2018/5/27-21:00
 *
 * Description:
 */
public class ListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        MessageServiceImp messageServiceImp=new MessageServiceImp();
        String command=req.getParameter("command");
        String description=req.getParameter("description");
        req.setAttribute("messageList",messageServiceImp.getMessage(command,description));
        req.setAttribute("command",command);
        req.setAttribute("description",description);
        req.getRequestDispatcher("/WEB-INF/view/back/list.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }
}
