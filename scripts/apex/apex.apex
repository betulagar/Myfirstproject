//AccOppSubFlow.AccOppFlow();

Order_Event__e newEvent=new Order_Event__e();
newEvent.Has_Shipped__c=true;
newEvent.Order_Number__c ='34ASD';
Eventbus.publish(newEvent);

RestApiOutboundCallout.getAnimals();
RestApiOutboundCallout.getUser();
RestCallouts11.getUser();
RestApiOutboundCallout.getListOfUsers();
RestApiOutboundCallout.postAnimal();
HWReqRes.getUser();
FlagsCountry.getCountry();