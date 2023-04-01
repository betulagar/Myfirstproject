public with sharing class HWReqRes {
    public static HttpResponse getUser(){
        HttpRequest request=new HttpRequest();
        request.setEndPoint('https://reqres.in/api/users');
        request.setMethod('GET');

        Http http=new Http();
        HttpResponse response= http.send(request);

        system.debug(response.getStatus());
        system.debug(response.getBody());
        system.debug(response.getStatusCode());

        if(response.getStatusCode()==200){
            string jsonstring=response.getBody();
            parentWrapperClass pageinfos=(parentWrapperClass)Json.deserializeStrict(jsonString, parentWrapperClass.class);

            Parent__c pObj=new Parent__c();
            pObj.Name=pageinfos.page;
            pObj.Per_Page__c=pageinfos.per_page;
            pObj.Total__c=pageinfos.total;
            pObj.Total_Page__c=pageinfos.total_pages;
            pObj.Url__c=pageinfos.support.url;
            pObj.Description__c=pageinfos.support.text;
            


    insert pObj;
    list<Child_Object__c> childList = new list<Child_Object__c>();
    for ( DataWrapperClass eachUser : pageinfos.data) {
        Child_Object__c cObj=new Child_Object__c();

        cObj.Email__c=eachUser.email;
        cObj.Name=eachUser.first_name;
        cObj.Id__c=eachUser.id;
        cObj.Last_Name__c=eachUser.last_name;
        cObj.Avatar__c='<img src='+eachUser.avatar+'></img>';
        cObj.Parent_Object__c=pObj.id;

        childList.add(cObj);
        
    }
      insert childList;      
        }
        return response;

    }      

    //wrapper class
public class parentWrapperClass{
public list<DataWrapperClass> data;
public string page;
public integer per_page;
public integer total;
public integer total_pages;
public SupportWrapperClass support;

}
public class DataWrapperClass{
   public string id ;
   public string first_name;
   public string last_name;
   public string avatar;
   public string email;
}
public class supportWrapperClass{
    public string url;
    public string text;
}


}