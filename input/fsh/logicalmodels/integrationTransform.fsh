Logical: IntegrationTransormTJT
Title: "Integration transform TJT - logical model"
Description: "Prototype of integration model with FHIR datatypes in order to make transformations. Starting with medication treatment line"

* identifier 0..* Identifier "Unique business identifier(s) for the medication treatment line. Identifiers associated with this Medication Statement that are defined by business processes " "Ravimiskeemi rea universaalne identifikaator" 
* medication 1..1 Reference(MedicationTJT) "Medicinal product for which the treatment line refers to." "Ravim, mis on reaga seotud."
* status 1..1 code "A code representing the status of recording the medication statement, recorded or draft." "Ravimiskeemi rea staatus. Kinnitatud-recorded, kinnitamata-draft."
* medicationOverview 1..1 Reference(MedicationOverviewTJT) "A model for the whole medication overview." "Ravimiskeem"
// medicationTreatment 0..* Reference(MedicationTreatment) "Reference or identifier of grouper of lines that belong together, lines are parts of the same treatment" "Viide või identifikaator, mis grupeerib ravimid"
* derivedFrom 0..* Identifier "Prescriptions that are connected to this Medication Treatment Line" "Seotud retseptid, siin on näiteks retsepti numbrid"
* indication 0..* CodeableConcept "Reason why the product has been prescribed to the patient, or why the patient claims to be taking it" "Diagnoos või põhjus, miks patsient ravimit võtab"
* indicationText 0..1 string "Additional instructions" "Lisa tekst, miks ravimit võetakse."
* dosageInstructions 0..* Reference(DosagingTJT) "Instructions about requested administration of the product" "Annustamisjuhis"
// preparationInstructions 0..* string "Additional instructions about preparation or dispense." "Lisakommentaar valmistamise kohta."
* comment 0..* "Comment on the individual line" "Ravimiskeemi rea kommentaar."
  * author 1..1 Reference(PractitionerTJT) "Author of the comment (Pharmacist, doctor, social carer)." "Kommentaari autor."
  * date 1..1 dateTime "Time of comment" "Kommentaari aeg"
  * commentText 1..1 string "Content of the comment" "Kommentaari sisu"
* recordingMetadata 1..1 "Metadata about reporting/authoring of the treatment line" "Info ravimiskeemi rea koostaja/koostamise kohta."
  * recorder 1..1 Reference(PractitionerTJT) "Person authoring/cancelling the treatment line, either by requesting a treatment or documenting a patient's statement. Typically a doctor, nurse, or pharmacist, or patient..." "Isik, kes ravimiskeemi rea koostas, raporteeris infot, tervishoiutöötaja, patsient jne."
  * recordedTime 1..1 dateTime "Time of creation of the treatment line" "Rea koostamise aeg."
  * patientReported 0..1 boolean "The treatment line has been documented according to patient's." "Kas ravimiskeemi rea raporteerija on patsient."
  * authorResponsible 0..1 Reference(PractitionerTJT) "HCP who takes the clinical decision for the medication treatment line."  "Ravimiskeemi rea sisestaja."
  * authoringTime 0..1 dateTime "The time the decision was made." "Aeg, millal ravimiskeemi rida sisestati"
 
* informationSource 0..* "Initial author of the MedicationStatement." "Ravimiskeemi rea põhjus, immuniseerimine, retsept, ravimi väljastamine, "
  * initialAuthor 0..* Reference(PractitionerTJT) "Initial author of the medication schema line." "Ravimiskeemi rea algne koostaja."
  // relatedRequest 0..* Reference "Prescriptions that have been authored based on the verified treatment line, or which have been the source for creating the unverified treatment line"
  // relatedStatement 0..* Reference "Medication-related statements from patients, pharmacists, or other HCPs, that are related to the verified treatment line or are the source for creating the unverified treatment line"
  // relatedDispensation 0..* Reference "Related dispensations that are NOT related to existing prescriptions/requests/statements. Allowing this is very implemenation-specific."
  // relatedAdministration 0..* Reference "Related administrations that are NOT related to existing prescriptions/requests/statements. This might be relevant for hospital/home nursing use cases." 

* prescriptionAdditional 0..* "Type of medication statement (for example, drug classification like ATC, where meds would be administered, legal category of the medication.)" "Ravimiskeemi rea retseptiga seotud info."
  * courseOfTherapyType 0..* CodeableConcept "Type of medication statement (for example, drug classification like ATC, where meds would be administered, legal category of the medication.)" "pidev | fikseeritud | vajadusel | muutuv | ühekordne |"
  * prescriptionCategory 0..* CodeableConcept "Type of medication statement (for example, drug classification like ATC, where meds would be administered, legal category of the medication.)." "tavaretsept | narkootilise ravimi retsept | meditsiiniseadme retsept"
  * repeatCategory 0..* CodeableConcept "Prescriptions to repeat" "1-kordne | 2-kordne | 3-kordne | 6-kordne"
  * unauthorizedMedication 0..1 Reference(UnauthorizedMedication) "Requesting permit for unauthorized medication." "Müügiloata ravimi taotlus"
  * reimbursement 0..1 "Reimbursement for this medication." "Soodusravimid"
    * reimbursementRate 0..1 CodeableConcept "Reimbursement rate" "Soodustuste määrad"
    * reimbursementReason 0..1 CodeableConcept "Reimbursement reason" "Soodusravimite loetelule vastav tingimus"
  * medicationLeft 0..* integer "How much medication is on the prescription left" "Ravimi jääk ravimiskeemi real."
  * totalPrescribedAmount 0..* integer "How much in total there is medication prescribed on one Medication Request. Used for calculating the current status of how much medication is left on one Medication Statement row." "Kui palju on ravimit koguseliselt välja kirutatud - näiteks 120 tabletti. Selle pealt saab arvutada jääki. Väljakirjutatud kogus."
  * prescriptionValidityTime 0..* dateTime "For expressing the validity of the prescription(s) in one MedicationStatement." "Retsepti kehtivuse aeg."
  * dispensationAuthorization 0..1 CodeableConcept "Defines the authorization of the prescription." "Volituse liik."
  * cancelledStatusReason 0..* CodeableConcept "Reason for cancellation." "Annulleerimise põhjus. Kui retsept annulleeritakse, tuleb loendist valida põhjus."
  * substitution 0..1 "Whether and which type of substitution is allowed for this medication treatment line" "Ravimi asendamine ja mis põhjusel"
    * substitutionType 1..1 CodeableConcept "The type of substitution that is allowed." "Asendamatuse tüüp."
    * substitutionTypeReason 0..1 CodeableConcept "Coded reason for the substitution requirement" "Asendamatuse põhjus."
    * substitutionTypeReasonText 0..1 string "Textual reason for the substitution requirement" "Tekstiliselt asendamatuse põhjus."
