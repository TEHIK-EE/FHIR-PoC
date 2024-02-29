Profile: EETISMedicationList
Parent: List
Id: ee-tis-medication-list
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-01-19T13:17:15.4473399+00:00"
* . ^short = "RAVIMISKEEM"
* . ^definition = "List of patient's medication. A List is a curated collection of resources, for things such as problem lists, allergy lists, facility list, organization list, etc."
* contained ..0
* title ^short = "Ravimiskeem"
* code = $list-example-codes#medications "Medication List" (exactly)
* code ^short = "Ravimiskeem - kas on vaja teha oma koodisüsteem?"
* code ^fixedCodeableConcept.text = "Medication List"
* subject 1..1
* subject only Reference(EETISPatient)
* subject ^type.aggregation = #referenced
* encounter ..0
* source 1..
* source only Reference(EETISDeviceTJT or EETISPractitioner or EETISPractitionerRole)
* source ^type.aggregation = #referenced
* entry.item only Reference(EETISMedicationStatement)
* entry.item ^type.aggregation = #referenced