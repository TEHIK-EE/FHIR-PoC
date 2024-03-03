Instance: MedicationStatementAlprazolam
InstanceOf: MedicationStatement
Usage: #example
* meta.profile = "https://fhir.ee/StructureDefinition/ee-tis-medication-statement"
* extension[0].url = "https://fhir.ee/StructureDefinition/ee-tis-substitution-allowed"
* extension[=].extension[0].url = "substitutionAllowed"
* extension[=].extension[=].valueBoolean = true
* extension[=].extension[+].url = "substitutionAllowedReason"
* extension[=].extension[=].valueCodeableConcept = $ravimi-asendamatuse-pohjus#KP08 "Patsiendil on diagnoositud kaasuv psüühika- või käitumishäire"
* extension[+].url = "https://fhir.ee/StructureDefinition/ee-tis-total-prescribed-amount"
* extension[=].valueInteger = 30
* extension[+].url = "https://fhir.ee/StructureDefinition/ee-tis-prescription-validity-time"
* extension[=].valueDateTime = "2023-11-07"
* extension[+].url = "https://fhir.ee/StructureDefinition/ee-tis-medication-left"
* extension[=].valueInteger = 0
* extension[+].url = "https://fhir.ee/StructureDefinition/ee-tis-reimbursement-rate"
* extension[=].extension[0].url = "reimbursementRate"
* extension[=].extension[=].valueCodeableConcept = $retsepti-soodustuse-maar#50 "50%"
* extension[=].extension[+].url = "reimbursementReason"
* extension[=].extension[=].valueString = "nii on"
* extension[+].url = "https://fhir.ee/StructureDefinition/ee-tis-prescription-authorization"
* extension[=].valueCodeableConcept = $retsepti-volituse-liik#private "privaatne"
* extension[+].url = "https://fhir.ee/StructureDefinition/ee-tis-prescription-intent"
* extension[=].valueCoding = $medicationrequest-intent#order "order"
* extension[+].url = "https://fhir.ee/StructureDefinition/ee-tis-verification"
* extension[=].extension[0].url = "verificationTime"
* extension[=].extension[=].valueDateTime = "2023-11-09"
* extension[=].extension[+].url = "verificationAuthor"
* extension[=].extension[=].valueString = "keegi arst"
* status = #recorded
* category[0] = $ravikuuri-tyyp#ü "ühekordne"
* category[=].text = "ühekordne"
* category[+] = $statement-origin-category#123 "ei ole patsiendi ytluse põhjal"
* category[+] = $retsepti-liik#1 "tavaretsept"
* category[=].text = "tavaretsept"
* category[+] = $retsepti-kordsus#1 "1-kordne"
* category[=].text = "1-kordne"
* medication.reference = Reference(alprazolam)
* subject = Reference(pat1MatiMeri)
* effectivePeriod.start = "2023-09-01"
* effectivePeriod.end = "2027-10-01"
* reason.concept = $rhk-10#F41.0 "Paanikahäire"
* note.authorReference = Reference(N98765)
* note.time = "2023-09-01"
* note.text = "patsient helistas ja soovis suuremat annust"
//* dosage.patientInstruction = "none"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 24
* dosage.timing.repeat.periodUnit = #h
* dosage.doseAndRate.doseQuantity = 1 $retsept-annustamise-yhik#TA "tablett"