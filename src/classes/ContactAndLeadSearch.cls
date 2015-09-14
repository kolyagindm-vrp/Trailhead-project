public with sharing class ContactAndLeadSearch {
	public ContactAndLeadSearch() {
		
	}

	public static List<List<sObject>> searchContactsAndLeads(String search) {
		List<List<sObject>> result = [FIND :search IN NAME FIELDS RETURNING Contact(FirstName, LastName), Lead(Name)];
		return result;
	}
}