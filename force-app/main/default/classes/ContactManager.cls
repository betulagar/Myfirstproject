/*1. Create an apex class and name it is - ContactManager
2. GET – Write a webservice to get contact details if we 
provide contact id in the URI. Return FirstName, LastName, 
Title, Email, Department
3. POST – Write a webservice which accepts FirstName, 
LastName, Title, Email, Department as request body and 
create a record in the system.
4. DELETE – Write a webservice to delete the asked contact. 
We will receive contact id in the URI
5. PUT – Write a webservice to upsert the contact record 
detail - FirstName, LastName, Title, Email, Department
6. PATCH – Write a webservice to update the given contact 
detai*/


@RestResource(urlMapping='/Con/*')
global with sharing class ContactManager {
    @HttpGet
    global static Contact getContact() {
        RestRequest Request = RestContext.Request;
        String uri = Request.requestURI;
        id conId= uri.substringAfterLast('/');
        Contact cn = [select id, firstname, lastname, title, email, department from Contact where id =: conId];
        return cn;
    }
    @httpPost
    global static id createContact(string firstname,string lastname, string tittle, string email, string department){
        Contact cn=new Contact();
        cn.FirstName=firstname;
        cn.LastName=lastname;
        cn.Title=tittle;
        cn.Email=email;
        cn.Department=department;
        insert cn;
        return cn.id;

        
    }
    @httpDelete
    global static string deleteContact() {
        id conId=RestContext.Request.requestURI.substringAfterLast('/');
        contact cn=[select id from Contact where id=:conId];
        delete cn;
        return 'Bu Contact silinmistir';
        
    }

    @httpPut
    global static contact upsertContact(string id,string firstname,string lastname, string tittle, string email, string department) {
        contact cn=new contact();
        cn.Id=id;
        cn.FirstName=firstname;
        cn.LastName=lastname;
        cn.Title=tittle;
        cn.Email=email;
        cn.Department=department;
        upsert cn;
        return cn;
        
    }
    
    
}










