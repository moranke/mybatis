package dao;

import db.DBConnectMybatis;
import entity.Message;
import org.apache.ibatis.session.SqlSession;
import org.apache.log4j.Logger;

import java.io.IOException;
import java.sql.Array;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



/**
 * Created by moran on 2018/5/28  6:47
 * Description:
 */
public class MessageDAOMybatis {
    private DBConnectMybatis dbConnectMybatis=new DBConnectMybatis();
    private SqlSession sqlSession=null;
    private  Logger logger=Logger.getLogger(Logger.class);
    List<Message> messageList=new ArrayList<Message>();

    //通过sqlSession获取数据库数据
    public List<Message> getMessage(String command, String description) {
        Message message=new Message();
        message.setCommand(command);
        message.setDescription(description);
        try {
            sqlSession=dbConnectMybatis.getSqlSession();
            //通过sqlSession 执行sql语句
            messageList=sqlSession.selectList("Message.getMessage",message);
//           System.out.println(sqlSession);
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            if (sqlSession!= null) {
                sqlSession.close();
            }

        }

        return  messageList;
    }

//    单个删除消息
    public boolean deleteMessageById(int id){
        try {
            sqlSession=dbConnectMybatis.getSqlSession();
            sqlSession.delete("Message.deleteMessageById",id);
            sqlSession.commit();
        } catch (IOException e) {
            e.printStackTrace();

        }finally {
            if (sqlSession != null) {
                sqlSession.close();
            }
        }
        return true;
    }
    //批量删除
    public  boolean deleteMessageBatch(List idList ){
        try {
            sqlSession=dbConnectMybatis.getSqlSession();
            sqlSession.delete("Message.deleteMessageBatch",idList);
            sqlSession.commit();
        } catch (IOException e) {
            e.printStackTrace();

        }
        return true;
    }
}
