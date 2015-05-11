package com.cyl.frame.log;

import org.apache.log4j.Logger;

public class LogHelper {
	
     private static Logger rcsLog=null;
     
     private LogHelper(){}
     
     private static synchronized void syncRcsLog()
     {
    	 if(rcsLog==null)
    	 {
    		 rcsLog=Log4j.getLoggerByName("STBLOG");
    	 }
     }
     
     public static Logger RcsLog()
     {
    	 if(rcsLog==null)
    	 {
    		 syncRcsLog();
    	 }
    	 return rcsLog;
     }
     
    
}


