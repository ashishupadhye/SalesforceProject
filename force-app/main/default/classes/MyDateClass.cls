public class MyDateClass
{
    public static void dateMethod()
    {
        DateTime todaysDate = System.today();
        String todaysDateStr = todaysDate.format('MM-dd-yyyy');
        //System.debug(todaysDateStr);
    }
}