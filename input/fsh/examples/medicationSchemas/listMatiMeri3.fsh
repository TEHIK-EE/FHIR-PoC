Instance: listMatiMeri3
InstanceOf: List
Usage: #example
* meta.profile = "https://fhir.ee/StructureDefinition/ee-tis-medication-list"
//* implicitRules = "http://hl7.org/fhir/reference"
* status = #current
* mode = #snapshot
* title = "Mati Meri ravimiskeem"
* code = $list-example-codes#medications "Medication List"
* code.text = "Medication List"
* subject = Reference(pat1MatiMeri)
* date = "2017-07-30"
* source = Reference(PractRoleD12345)
* entry[0].flag = $list-item-flag#01 "Unchanged"
* entry[=].deleted = false
* entry[=].date = "2023-06-30"
* entry[=].item = Reference(MedicationStatementAdrenalin) "Adrenaliin"
* entry[+].flag = $list-item-flag#04 "Prescribed"
* entry[=].deleted = false
* entry[=].date = "2023-01-30"
* entry[=].item = Reference(MedicationStatementAlprazolam) "Alprasolaam"
* entry[+].flag = $list-item-flag#04 "Prescribed"
* entry[=].deleted = false
* entry[=].date = "2023-11-30"
* entry[=].item = Reference(MedicationStatement-metformin) "Metformiin"
* entry[+].flag = $list-item-flag#01 "Unchanged"
* entry[=].deleted = false
* entry[=].date = "2023-01-03"
* entry[=].item = Reference(MedicationStatementNovorapid) "Aspart-insuliin"
* entry[+].flag = $list-item-flag#06 "Suspended"
* entry[=].deleted = true
* entry[=].date = "2023-12-12"
* entry[=].item = Reference(MedicationStatement-ospen2) "Fenoksymetyylpenitsilliin"