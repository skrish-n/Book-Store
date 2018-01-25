package com.inoesis.beans;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;



public class HashingPassword {
	public String setpassword(String s1){

		

		try{

			MessageDigest alg = MessageDigest.getInstance("MD5");
			String password = s1;
			alg.reset();
			alg.update(password.getBytes());
			byte[] msgDigest = alg.digest();

			BigInteger number = new BigInteger(1,msgDigest);

			String str = number.toString(16);
			return str;
			
		}catch(NoSuchAlgorithmException e){
			e.printStackTrace();
		}

		return s1;
	}

}


