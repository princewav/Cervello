  
**Signature API Docs:**
  
A FastAPI web app that allows digital signature process automation using an external digital
  
signature service. We will take as a reference the **Yousign** digital signature service, the one that will
  
be first implemented, but the idea is to build an abstraction layer in order to adapt the app behaviour
  
to manage different external resources.
  
**POST /procedure:**
  
A procedure is the digital signature process of inviting one or more participants (members) to sign
  
one or more documents (files). It's important to emphasize that files to be signed must be in **PDF**
  
format and that it is quite possible to link several files to the same signature procedure.
  
Response contains the **procedure\_id**, that can later be used to get procedure status, and the
  
**iframe\_src**, that can be used to embed the sign page within a web app.
  
Once a procedure is created an invitation mail is sent to signers with a link to access the document,
  
the content of this mail can be customized in order to redirect the signer to a specific page. By
  
default the link points to the document page within yousign website.
  
**Note:**
  
**1.** We assume that the pdf file to be signed is not shared but it is generated on our side starting
  
from a static template. It’s important to know if editable fields should be provided inside the
  
document to be signed.
  
**2.** Members receive an **OTP** code by sms at the time of sign, if is preferable this code can be
  
sent by email
  
**Request Payload:**
  
{
  
"vendor": "indomio",
  
"members": [
  
{
  
"firstname": "First",
  
"lastname": "Signer",
  
"email": "first.signer@example.it",
  
"phone": "+393921234567",
  
},
  
{
  
"firstname": "Second",
  
"lastname": "Signer",
  
"email": "second.signer@example.it",
  
"phone": "+393927654321",
  
}
  
]
  
}
  
**Response status code 200:**
  
{
  
"procedure\_id": "cf7a6583-8722-45cd-a146-906e08bc36e2",
  
"vendor": "indomio",
  
"status": "active",
  
"signers": [
  
{
  
"firstname": "First",
  
"lastname": "Signer",
  
"email": "first.signer@example.it",
  
  
  
  
  
"phone": "+393921234567",
  
"status": "pending",
  
"iframe\_src":
  
"https://staging-app.yousign.com/procedure/sign?members=/members/3af46b58-8c3a-4877-9878-
  
1044fc8e0db3",
  
},
  
{
  
"firstname": "Second",
  
"lastname": "Signer",
  
"email": "second.signer@example.it",
  
"phone": "+393927654321",
  
"status": "pending",
  
"iframe\_src":
  
"https://staging-app.yousign.com/procedure/sign?members=/members/3af46b58-8c3a-4877-9878-
  
1044fc8e0000",
  
}
  
]
  
}
  
**GET /procedure/{procedure\_id}**
  
**Response status code 200:**
  
{
  
"procedure\_id": "cf7a6583-8722-45cd-a146-906e08bc36e2",
  
"vendor": "indomio",
  
"status": "active",
  
"signers": [
  
{
  
"firstname": "First",
  
"lastname": "Signer",
  
"email": "first.signer@example.it",
  
"phone": "+393921234567",
  
"status": "pending",
  
"iframe\_src":
  
"https://staging-app.yousign.com/procedure/sign?members=/members/3af46b58-8c3a-4877-9878-
  
1044fc8e0db3",
  
},
  
"firstname": "Second",
  
"lastname": "Signer",
  
"email": "second.signer@example.it",
  
"phone": "+393927654321",
  
"status": "pending",
  
"iframe\_src":
  
"https://staging-app.yousign.com/procedure/sign?members=/members/3af46b58-8c3a-4877-9878-
  
1044fc8e0000",
  
}
  
]
  
}
  
  
  
  
  
**GET /procedure/status/**
  
**internal** callback endpoint used as webhook for receiving procedure status from yousign when a
  
specific event occurs. Received informations can be used for triggering notifications. If needed a
  
different callback endpoint can be specified as optional field at procedure creation (POST
  
/procedure)
  
**Notifications and Events:**
  
At he design stage we should define for which of the following events we should provide
  
notifications. Events that can be related to webhooks and email notifications are:
  
**Name**
  
**Description**
  
procedure.started
  
procedure.finished
  
procedure.refused
  
procedure.expired
  
member.started
  
member.finished
  
comment.created
  
Fired when a procedure is created (POST /procedure)
  
Fired when a procedure is finished (all members have signed)
  
Fired when a procedure is refused (a member have refused)
  
Fired when a procedure expired (The expiresAt date is reached)
  
Fired when a member can sign
  
Fired when a member have signed
  
Fired when someone comment a procedure