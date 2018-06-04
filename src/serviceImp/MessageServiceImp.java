package serviceImp;

import dao.MessageDAOMybatis;
import dao.MessagedDAO;
import db.DBConnect;
import entity.Message;
import net.sf.json.JSONArray;
import service.MessageService;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.sql.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by moran on 2018/5/27.
 */
public class MessageServiceImp implements MessageService {
    MessagedDAO messagedDAO = new MessagedDAO();
    MessageDAOMybatis messageDAOMybatis = new MessageDAOMybatis();

    public List<Message> getMessage(String command, String description) {
        List<Message> messageList = new ArrayList<Message>();
//  messageList=messagedDAO.getMessage(command,description);

        messageList = messageDAOMybatis.getMessage(command, description);
        return messageList;
    }

    //单个删除
    public boolean deleteMessageById(String id) {
        messageDAOMybatis.deleteMessageById(Integer.parseInt(id));
        return true;
    }

    //批量删除
    public boolean deleteMessageBatch(String[] ids) {
        List<Integer> idList = new ArrayList<Integer>();
        if (ids.length > 0) {
            for (String id : ids) {
                idList.add(Integer.parseInt(id));
            }
        }
        messageDAOMybatis.deleteMessageBatch(idList);
        return true;
    }

    public JSONArray getContents(String keyWord){
        List<String> contents=new ArrayList<String>();
        contents=messageDAOMybatis.getContents(keyWord);
        return  JSONArray.fromObject(contents);
    }
}
