public class StringArrayTest {
	public static List<String> generateStringArray(Integer count)
    {
        List<String> myNewList = new List<String>();
        for(Integer i = 0; i < count; i++) {
            myNewList.add('Test ' + i);
        }
        return myNewList;
    }
}