package control;

import serviceImp.MessageServiceImp;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


/**
 * Created by moran on 2018/5/28  14:10
 * Description:
 */
public class deleteMessageBatchServlet extends HttpServlet{
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            req.setCharacterEncoding("utf-8");
            MessageServiceImp messageServiceImp=new MessageServiceImp();
            messageServiceImp.deleteMessageBatch(req.getParameterValues("id"));
            req.getRequestDispatcher("/list.action").forward(req,resp);
        }
        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            this.doGet(req,resp);
        }

}
