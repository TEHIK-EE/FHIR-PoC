/
*Profile: PoCDispensation
Parent: MedicationDispense
Id: poc-dispensation
Title: "DispensationPoC"
Description: "Simplified dispensation profile. Not for actual implementation. Excludes receiver, prices, pharmacy data."

* contained 0..0
* identifier 0..0
* basedOn 0..0
* partOf 0..0
* status = #completed
* notPerformedReason 0..0
* statusChanged 0..0
* category 0..0
* medication only Reference(PoCMedicationDispensed)
  * concept 0..0
  * reference 1..1
* subject only Reference(PoCPatientVerified)
* encounter 0..0
* supportingInformation 0..0
* performer 1..1
  * function 0..0
  * actor only Reference(PoCPractitionerRole)
* location 0..0
* authorizingPrescription only Reference(PoCPrescription)
* authorizingPrescription 1..1
* type 0..0
* quantity 1..1
  * ^short = "Pakendite arv"
  * value 1..1
//  * value only positiveInt
  * unit 0..0
  * system 0..0
  * code 0..0
* daysSupply 0..0
* recorded 0..0
* whenPrepared 0..0
* whenHandedOver 1..1
  * ^short = "Tehingu kuupäev"
* destination 0..0
* receiver 0..0
* note 0..0
* renderedDosageInstruction 0..0
* dosageInstruction 0..0
* substitution 0..0
* eventHistory 0..0

Profile: PoCMedicationDispensed
Parent: Medication
Id: poc-medication-dispensed
Title: "MedicationPoC - for dispensation"
Description: "Simplified medication profile for dispensation (identifier code only). Not for actual implementation"

* identifier 1..1
  * ^short = "Pakendi kood (pakendipõhisel retseptil)"
* code 0..0
* status 0..0
* marketingAuthorizationHolder 0..0
* doseForm 0..0
* totalVolume 0..0
* ingredient 0..0
* batch 0..0
* definition 0..0
*/