using System;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;

[ServiceContract(Namespace = "")]
[AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
public class RedirectToPaypal
{
	// Add [WebGet] attribute to use HTTP GET
	[OperationContract]
		public static string  getItemNameAndCost(string itemName, string itemCost)


    {

        //Converting String Money Value Into Decimal



       //int price = Convert.ToInt16(itemCost);



        //declaring empty String



       string returnURL = "";



       //returnURL += "https://www.paypal.com/xclick/business=ticketbooking@apcinemas.com";
       returnURL += "https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=ticketbooking@apcinemas.com";




        //PassingItem Name as dynamic



       returnURL +="&item_name="+itemName;
       //returnURL += "&quantity=" + itemCost;



        //AssigningName as Statically to Parameter



       returnURL += "&first_name=" + "AP Cinemas";



       //AssigningCity as Statically to Parameter



       returnURL += "&city=" + "Mumbai";



       //Assigning State as Statically to Parameter



       returnURL += "&state=" + "Maharashtra";



       //Assigning Country as Statically to Parameter



       returnURL += "&country=" + "India";



        //Passing Amount as Dynamic



       returnURL += "&amount=" + itemCost;



       //Passing Currency as your 



       returnURL += "&currency_code=USD";



       //retturn Url if Customer wants To return to Previous Page



       returnURL += "&return=http://ticketbooking.apcinemas.com";



       //retturn Url if Customer Wants To Cancel the Transaction



       returnURL += "&cancel_return=http://ticketbooking.apcinemas.com";



       return returnURL;



    }



 


	// Add more operations here and mark them with [OperationContract]
}
