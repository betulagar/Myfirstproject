list<string> days=new List<string>();
days.add('Monday'); 
days.add('Tuesday'); 
days.add('Wednesday');
days.add('Thursday');
days.add('Friday');
days.add('Saturday');
days.add('Sunday');

system.debug(days);
string indexweekdays=days[4];
system.debug(indexweekdays+' is the 4.day');

system.debug(days.size());
system.debug('The days contain sali '+days.contains('sali'));

boolean isContainsSali = (!days.contains('sali'));
system.debug('The days not contain sali '+isContainsSali);

days.sort();
system.debug('After sort '+days);

boolean isListEmpty= days.isEmpty();
System.debug('Is list empty '+isListEmpty);

Set<String> returnSet=new Set<String>();
returnSet.addAll(days);
//return returnset;
system.debug('list is returning Set '+returnset);
//string capitalizeSet=(days.capitalize());
//system.debug(capitalizeSet);
returnSet.clear();
system.debug('Set is clear '+returnSet);