Logical: MedicationRequestTJT
Title: "MedicationRequestTJT"
Description: "Prescription from prescription center"
* identifier 1..* II "An identifier for this prescription" "Retsepti number."
* status 1..1 CD "A code representing the status of prescription active on-hold  ended  stopped  completed  cancelled  entered-in-error  draft  unknown. " "Retsepti staatus."
* reason 1..1 CD "Reason or indication for ordering or not ordering the medication." "Diagnoos"
* note 0..1 ST "Extra information about the prescription that could not be conveyed by the other attributes." "Retseptikoostaja kommentaar"
* courseOfTherapyType 0..* CD "Type of medication request" "pidev fikseeritud vajadusel muutuv ühekordne "
* prescriptionCategory 0..* "Category of medication request" "tavaretsept  narkootilise ravimi retsept  meditsiiniseadme retsept"
* repeatCategory 0..* CD "Prescriptions to repeat" "Kordsus 1-kordne  2-kordne  3-kordne  6-kordne" 
* unauthorizedMedicationRequest 0..1 Reference "Requesting usage permit for unauthorized medication." "Müügiloata ravimi taotlus"
* reimbursement 0..1 Class
  * reimbursementRate 0..1 CD "Soodustuste määr"
  * reimbursementReason 0..1 CD "Soodusravimite loetelule vastav tingimus"
* medicationLeft 0..* INT "How much medication is on the prescription left" "Ravimi jääk ravimiskeemi real."
* prescribedAmount 0..* INT "How much in total there is medication prescribed on one Medication Request. Used for calculating the current status of how much medication is left on one Medication Statement row." "Kui palju on ravimit koguseliselt välja kirutatud - näiteks 120 tabletti. Selle pealt saab arvutada JÄÄKI. Väljakirjutatud kogus."
* prescriptionValidityTime 0..* DT "For expressing the validity of the prescription(s) in one MedicationStatement." "Retsepti kehtivuse aeg."
* lockStatus 0..* ANY "When pharmacy locks the prescription for ordering unauthorized medication for patient." "Retsepti broneering"
* prescriptionAuthorization 0..* CD "Defines the authorization of the prescription." "Volituse liik."
* cancelledStatusReason 0..* CD "Reason for cancellation." "Annulleerimise põhjus. Kui retsept annulleeritakse, tuleb loendist valida põhjus."

// siit on veel puudu andmeelemente ja viiteid 