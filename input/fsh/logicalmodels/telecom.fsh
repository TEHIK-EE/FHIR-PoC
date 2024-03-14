Logical: TelecomTJT
Title: "TelecomTJT"
Description: "Contact phone or email aadress"
* phone 0..* INT "Phone number" "Telefoninumber"
* phoneType 0..1 CD "Contact point phone type" "Telefoni tüüp"
* period 0..1 Class "Time when the contact point was/is in use." "Periood, kui on antud telefoninumber kasutusel."
  * startDate 0..1 DT "Start date when the contact point was/is in use." "Millal telefoninumber kasutati, alguse kuupäev."
  * endDate 0..1 DT "End time of Start date when the contact point was/is in use." "Millal telefoninumber kasutati, lõpu kuupäev."

// siia peaks veel lisama emaili 