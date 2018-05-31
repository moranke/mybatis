package dao;

import db.DBConnect;
import entity.Message;

import javax.servlet.http.HttpServletRequest;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by lvdia on 2018/5/27.
 */
public class MessagedDAO {
    private StringBuilder sbl =null;
    private String sql=null;
    private ResultSet rst = null;
    private DBConnect dbConnect =  new DBConnect();
    private PreparedStatement pst = null;

    public List<Message> getMessage(String command,String description) {
        List<Message> messageList = new ArrayList<Message>();
        sbl =new StringBuilder("select id,command,description,content from message where 1=1");
         List<String> paramList=new ArrayList<String>();
        if (command != null&&!"".equals(command)) {
            sbl.append(" and command=?");
            paramList.add(command);
        }
        if (description != null&&!"".equals(description)) {
            sbl.append(" and description like '%' ? '%'");
            paramList.add(description);
        }
        sql=sbl.toString();


        try {
            pst = dbConnect.getConnect().prepareStatement(sql);//准备执行语句
            for (int i = 0; i <paramList.size() ; i++) {
                pst.setString(i+1,paramList.get(i));
            }
            rst = pst.executeQuery();
//            System.out.println(rst.getClass());
            if (rst != null) {
                while (rst.next()) {
                    Message message = new Message(rst.getInt(1), rst.getString(2),
                            rst.getString(3), rst.getString(4));
                    System.out.println(message);
                    messageList.add(message);
                }
            }

            rst.close();
            pst.close();
            dbConnect.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return messageList;
    }
}
