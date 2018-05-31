package control;

import org.apache.log4j.Logger;
import serviceImp.MessageServiceImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by moran on 2018/5/28  13:23
 * Description:
 */
public class deleteMessageByIdServlet extends HttpServlet {
    private Logger logger=Logger.getLogger(Logger.class);


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
        MessageServiceImp messageServiceImp=new MessageServiceImp();
        messageServiceImp.deleteMessageById(req.getParameter("id"));
       logger.info(req.getSession()+"删除了信息：message("+req.getParameter("id")+").");

        req.getRequestDispatcher("/list.action").forward(req,resp);

    }
}