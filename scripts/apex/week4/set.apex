SetDemo.citySet();
SetDemo.randomIntegerSet();
list<integer> listInteger = new List<Integer>();
listInteger.add(10); //0
listInteger.add(15); //1
listInteger.add(21); //2
listInteger.add(15); //3`
listInteger.add(12); //4
listInteger.add(18); //5

system.debug('list--> '+listInteger);
set<integer>setInt=Setdemo.setFromList(listInteger);
system.debug('set '+setInt);
SetDemo.citySet();
SetDemo.randomIntegerSet();

list<integer> listInteger2 = new List<Integer>();
listInteger2.add(10); //0
listInteger2.add(15); //1
listInteger2.add(21); //2
listInteger2.add(15); //3
listInteger2.add(12); //4
listInteger2.add(18); //5

system.debug('list -> ' + listInteger2);
set<integer> setInt2 = SetDemo.setFromList(listinteger2);
system.debug('set -> ' + setInt2);


  set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('TOKYO');
set<string> upperCaseSet = SetDemo.capitalizeSet(cities);
system.debug(upperCaseSet);