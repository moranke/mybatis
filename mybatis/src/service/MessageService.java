package service;

import entity.Message;

import java.util.List;

/**
 * Created by lvdia on 2018/5/27.
 */
public interface MessageService {

     List<Message> getMessage(String command,String description );
     boolean deleteMessageById(String id );
     boolean deleteMessageBatch(String[]  ids);
}
