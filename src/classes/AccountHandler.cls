public class AccountHandler {
    public static Account insertNewAccount(String AccountName) {
        Account myAcc = new Account(Name = AccountName);
        try {
        	insert myAcc;
        } catch (DmlException e) {
            return null;
        }
        return myAcc;
    }
}