package serviceImpTest;

import org.junit.Test;
import serviceImp.MessageServiceImp;

/**
 * Created by lvdia on 2018/5/27.
 */
public class MessageServiceImpTest {
    MessageServiceImp messageServiceImp=new MessageServiceImp();
//    @Test
//    public void getMessageTest() {
//        MessageServiceImp msi=new MessageServiceImp();
//        msi.getMessage();
//    }
    @Test
    public  void getContents(){
        System.out.println(messageServiceImp.getContents("a"));
    }
}
