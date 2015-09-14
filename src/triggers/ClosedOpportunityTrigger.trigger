trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
	List<Task> t = new List<Task>();
	for (Opportunity o : Trigger.new) {
		if (o.StageName == 'Closed Won') {
			t.add(new Task(WhatId = o.Id, Subject = 'Follow Up Test Task'));
		}
	}
	insert t;
}