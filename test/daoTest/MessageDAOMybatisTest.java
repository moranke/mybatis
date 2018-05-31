package daoTest;

import dao.MessageDAOMybatis;
import entity.Message;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by moran on 2018/5/28  6:58
 * Description:
 */
public class MessageDAOMybatisTest {
    @Test
    public void  getMessageTest(){
        MessageDAOMybatis messageDAOMybatis=new MessageDAOMybatis();
        List<Message> messageList=new ArrayList<Message>();
        messageList= messageDAOMybatis.getMessage("s","s");
        for (Message message:messageList
             ) {
            System.out.println(message);
        }
    }
}
