Instance: dispensation-alprazolam
InstanceOf: MedicationDispense
Usage: #example
* meta.profile = "https://fhir.ee/StructureDefinition/ee-tis-medication-dispense"
* implicitRules = "https://build.fhir.org/ig/HL7EE/ig-ee-base"
* extension.url = "https://fhir.ee/StructureDefinition/ee-tis-reimbursement-rate"
* extension.extension[0].url = "reimbursementRate"
* extension.extension[=].valueCodeableConcept = $retsepti-soodustuse-maar#00 "0%"
* extension.extension[+].url = "reimbursementReason"
* extension.extension[=].valueString = "ei ole soodusravim"
* status = #completed
* medication.reference = Reference(alprazolam)
* subject = Reference(pat1MatiMeri)
* performer.actor = Reference(pharmacistKristiina)
* authorizingPrescription = Reference(prescription-alprazolam)
* quantity.value = 30
* whenHandedOver = "2023-11-07"
* note.text = "ei ole võimalik väljastada arsti kirjutatud soodustusega"