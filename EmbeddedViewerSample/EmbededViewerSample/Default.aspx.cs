using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmbededViewerSample
{
    public partial class Default : System.Web.UI.Page
    {

        //replace with your own comsumer key and secret
        const String consumerKey = "<your consumer key>";
        const String secretKey = "your secret key";
        const String strAgigee = "https://developer.api.autodesk.com";
        //replace with your own URN of model
        //you need to get your model uploaded and translated with view and data api
        //please refer to the workflow samples
        const string documentId = "urn:dXJuOmFkc2sub2JqZWN0czpvcy5vYmplY3Q6ZGFuaWVsX3RyYW5zbGF0ZV9idWNrZXQvRHJpbGwuZHdmeA==";

        RestClient _client = new RestClient(strAgigee);
        String _token = "";


        protected void Page_Load(object sender, EventArgs e)
        {
            authentication();
        }

        public string GetToken()
        {
            return _token;
        }
        public string GetDocumentId()
        {
            string docId ;
            if (!documentId.StartsWith("urn:"))
            {
                docId = "urn:" + documentId;
            }
            else
            {
                docId = documentId;
            }

            return docId;

        }

        bool authentication()
        {
            RestRequest authReq = new RestRequest();
            authReq.Resource = "authentication/v1/authenticate";
            authReq.Method = Method.POST;
            authReq.AddHeader("Content-Type", "application/x-www-form-urlencoded");
            authReq.AddParameter("client_id", consumerKey);
            authReq.AddParameter("client_secret", secretKey);
            authReq.AddParameter("grant_type", "client_credentials");

            IRestResponse result = _client.Execute(authReq);
            if (result.StatusCode == System.Net.HttpStatusCode.OK)
            {
                String responseString = result.Content;
                int len = responseString.Length;
                int index = responseString.IndexOf("\"access_token\":\"") + "\"access_token\":\"".Length;
                responseString = responseString.Substring(
                    index, len - index - 1);
                int index2 = responseString.IndexOf("\"");
                _token = responseString.Substring(0, index2);

                return true;

            }
            return false;

        }
    }
}