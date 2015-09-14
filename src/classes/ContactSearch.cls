public with sharing class ContactSearch {
	public ContactSearch() {
		
	}

	public static List<Contact> searchForContacts(String lastName, String postalCode) {
		List<Contact> result = [SELECT Id, Name FROM Contact WHERE LastName = :lastName AND MailingPostalCode = :postalCode];
		return result;
	}
}