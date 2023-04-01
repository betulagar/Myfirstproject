public class FlagsCountry {
    public static HttpResponse getCountry(){
        //request enddpoint and method
        HttpRequest request =new HttpRequest();
        request.setEndPoint('https://restcountries.com/v2/all');
        request.setMethod('GET');
        //2http
        Http hp=new Http();
        HttpResponse response= hp.send(request);
        
        //3 body al donustur
        if(response.getStatusCode()==200){
            string jsonData=response.getBody();
            //3.1 
            list<wrapperCountryFlag> listWrapper=(list<wrapperCountryFlag>)JSON.deserialize(jsonData,list<wrapperCountryFlag>.class);
            //3.2orguma kaydetmek icin obje list olustur
            list<Flag_Country__c> listCountry=new list<Flag_Country__c>();
            //3.3 wrapper listemi for dongusunun icine alip her eleman orguma kaydedecek bir record olusturuyorum
            for(wrapperCountryFlag eachWrapper : listWrapper) {
                Flag_Country__c obj = new Flag_Country__c();
                //sol taraf orgun fieldleri, sag taraf wrapperden gelen fieldler
                obj.Name = eachWrapper.name;
                obj.Capital__c = eachWrapper.capital;
                obj.Fag_URL__c = eachWrapper.flags.svg;
                obj.Native_Name__c = eachWrapper.nativeName;
                obj.population__c = eachWrapper.population;
                obj.Region__c = eachWrapper.region;

                listCountry.add(obj);
            }
            insert listCountry;
        }
        return response;
    }
public class wrapperCountryFlag{
    public string name;
    public string nativeName;
    public integer population;
    public string capital;
    public string region;
    public flagWrapper flags;
}
public class flagWrapper{
    public string svg;

}

}