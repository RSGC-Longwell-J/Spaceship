class Timer{
  
  int start=0;
  int stop=0;
  int time;
  int elapsed;
  boolean running=false;
  int seconds;
  int minute;
  
  void start(){
    start = millis();
    running=true;
  }
  
  void stop(){
    stop=millis();
    running=false;
  }
  
   time(){
     if(running){
       elapsed = (millis()-start);
     }
     else{
       elapsed=(stop-start);
       
     }
     return elapsed;
     
   }
}
   
   second(){
     return(time()/(1000*60)) % 60;
     
   }
   
   minute(){
     return(time()/(1000*60))%60;
     
   }
   
   hour(){
     return(time()/(1000*60*60))%24;
   }
     
    }
     
  