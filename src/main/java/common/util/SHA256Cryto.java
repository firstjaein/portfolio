package common.util;

import java.security.MessageDigest;

//�ܹ��� ��ȣȭ ������� password ���� ��ȣȭ ���
public class SHA256Cryto {
	public String encryptSha256(String param) throws Exception
	   {
	      String result = "";
	      
	      MessageDigest md = MessageDigest.getInstance("SHA-256");
	      md.update(param.getBytes());
	      byte bs[] = md.digest();
	      
	      StringBuffer sb = new StringBuffer();
	      for(int i = 0; i<bs.length; i++)
	      {
	         sb.append(Integer.toString((bs[i]&0xff) + 0x100, 16).substring(1));
	      }
	      result = sb.toString();
	      
	      return result;
	   }
}