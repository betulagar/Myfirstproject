public with sharing class SoqlDemo {
    public static void accountSOQL_1() {
    list<account> listAccount=[select id, name from account where name like '%a%'];
    system.debug(listAccount);
    }
}
