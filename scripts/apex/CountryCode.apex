Map<String,Country_Code__c> allCountryCodes=Country_Code__c.getAll();
system.debug('all country codes=> '+allCountryCodes);
for(string eachCountry:allCountryCodes.keySet()){
    system.debug('Country is '+' Its is code is '+ allCountryCodes.get(eachCountry).code__c);
}