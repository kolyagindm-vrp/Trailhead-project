trigger AccountAddressTrigger on Account (before insert, before update) {
	for (Account a : Trigger.new) {
		//Check if checkbox is checked and Billing Postal Code is set
		if ((a.Match_Billing_Address__c == true) && !String.isBlank(a.BillingPostalCode)) {
			//Set Shipping Postal Code same as Billing Postal Code
			a.ShippingPostalCode = a.BillingPostalCode;
		}
	}
}