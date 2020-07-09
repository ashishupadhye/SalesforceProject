public class futureMethodTask {

    public futureMethodTask()
    {
        FutureFirst();
        FutureSecond();
        FutureThird();
    }

    @future
 public static void FutureFirst()
 {
     System.debug('Inside first Method');
 }
      @future
     public static void FutureSecond()
 {
     System.debug('Inside Second Method');

 }
     @future
     public static void FutureThird()
 {
     System.debug('Inside Third Method');
   
 }
    
    
    
    
    
    
    
    
}