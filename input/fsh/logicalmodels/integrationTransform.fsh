Logical: IntegrationTransormTJT
Title: "Integration transform TJT - logical model"
Description: "Prototype of integration model with FHIR datatypes in order to make transformations. Starting with medication treatment line"

* identifier 0..* Identifier "Unique business identifier(s) for the medication treatment line. Identifiers associated with this Medication Statement that are defined by business processes " "Ravimiskeemi rea universaalne identifikaator" 
* medication 1..1 Reference(MedicationTJT) "Medicinal product for which the treatment line refers to." "Ravim, mis on reaga seotud."
* status 1..1 code "A code representing the status of recording the medication statement, recorded or draft." "Ravimiskeemi rea staatus. Kinnitatud-recorded, kinnitamata-draft."
* medicationOverview 1..1 Reference(MedicationOverviewTJT) "A model for the whole medication overview." "Ravimiskeem"
* verification 0..* BackboneElement
  * verification.verifyingPractitioner 1..1 Reference(PractitionerTJT) "HCP (or device, if authorized) verifying the treatments/overview" "Tervishoiutöötaja, kes kinnitas ravimiskeemi."  
  * verification.verificationTime 1..1 dateTime "The date and time when this medication treatment line was verified" "Kinnitamise aeg"
// medicationTreatment 0..* Reference(MedicationTreatment) "Reference or identifier of grouper of lines that belong together, lines are parts of the same treatment" "Viide või identifikaator, mis grupeerib ravimid"
* derivedFrom 0..* Identifier "Prescriptions that are connected to this Medication Treatment Line" "Seotud retseptid, siin on näiteks retsepti numbrid"
* indication 0..* CodeableConcept "Reason why the product has been prescribed to the patient, or why the patient claims to be taking it" "Diagnoos või põhjus, miks patsient ravimit võtab"
* indicationText 0..1 string "Additional instructions" "Lisa tekst, miks ravimit võetakse."
* dosageInstructions 0..* Reference(DosagingTJT) "Instructions about requested administration of the product" "Annustamisjuhis"
// preparationInstructions 0..* string "Additional instructions about preparation or dispense." "Lisakommentaar valmistamise kohta."
* commentAuthor 1..1 Reference(PractitionerTJT) "Author of the comment (Pharmacist, doctor, social carer)." "Kommentaari autor."
* commentDate 1..1 dateTime "Time of comment" "Kommentaari aeg"
* commentText 1..1 string "Content of the comment" "Kommentaari sisu"
* sourceInitialAuthor 0..* Reference(PractitionerTJT) "Initial author of the medication schema line." "Ravimiskeemi rea algne koostaja."

