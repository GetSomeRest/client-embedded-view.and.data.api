view.and.data.api-embeded-viewer
================================
Simplest way to add a 3D viewer into your website

If all you want is to embed a 3D viewer into your website, the simplest way is to use following code snippet. Please note that you need to generate the access token in server side with view and data API.

Limitation: It is difficult to get the viewer object and manupulate the viewer with viewer client side API. If you want to have more control of the viewer, you should consider adding viewer with viewer client API and <div> tag. Please refer to other viewer client samples on https://github.com/Developer-Autodesk

 <iframe id="childFrame" style="height : 100%; height : 100%"
                        src="https://developer.api.autodesk.com/viewingservice/v1/viewers/index.html?document=<%=GetDocumentId()%>&accessToken=<%=GetToken()%>">