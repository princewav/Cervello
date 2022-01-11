![[signature_api_docs_external.pdf]]

# Signature API Docs
A FastAPI web app that allows digital signature process automation using an external digital signature service. We will take as a reference the Yousign digital signature service, the one that will be first implemented, but the idea is to build an abstraction layer in order to adapt the app behaviour to manage different external resources.

## POST /procedure
A procedure is the digital signature process of inviting one or more participants (members) to sign one or more documents (files). It's important to emphasize that files to be signed must be in PDF format and that it is quite possible to link several files to the same signature procedure. Response contains the procedure_id, that can later be used to get procedure status, and the iframe_src, that can be used to embed the sign page within a web app. Once a procedure is created an invitation mail is sent to signers with a link to access the document, the content of this mail can be customized in order to redirect the signer to a specific page. By default the link points to the document page within yousign website

##### Note:
1. We assume that the pdf file to be signed is not shared but it is generated on our side starting from a static template. It’s important to know if editable fields should be provided inside the document to be signed. 
2. Members receive an OTP code by sms at the time of sign, if is preferable this code can be sent by email

### Request Payload
```json
{
   "vendor":"indomio",
   "members":[
      {
         "firstname":"First",
         "lastname":"Signer",
         "email":"first.signer@example.it",
         "phone":"+393921234567"
      },
      {
         "firstname":"Second",
         "lastname":"Signer",
         "email":"second.signer@example.it",
         "phone":"+393927654321"
      }
   ]
}
```