Profile: EETISReimbursementTask
Parent: Task
Id: ee-tis-reimbursement-task
Description: "Task is for the practitioner to ask reimbursement rates for prescription medicine. The MedicationStatement with its medication is sent to the Estonian Prescription Center and in return the practitoner recieves reimbursement rate (with additional explanation) for the medication."
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-02-05T11:53:03.4000794+00:00"
* . ^definition = "Task is for the practitioner to ask reimbursement rates for prescription medicine. The MedicationStatement with its medication is sent to the Estonian Prescription Center and in return the practitoner recieves reimbursement rate (with additional explanation) for the medication."
* basedOn only Reference(EETISMedicationList)
* focus only Reference(EETISMedicationStatement)
* input.value[x] only Reference
* input.value[x] = Reference(https://fhir.ee/StructureDefinition/ee-tis-medication-statement) (exactly)
//* input.value[x] ^fixedReference.type = "StructureDefinition"
* output.value[x] only Reference
* output.value[x] = Reference(https://fhir.ee/StructureDefinition/ee-tis-reimbursement-task-response-parameters) "Soodusmäära vastus" (exactly)
* output.value[x] ^short = "Response with different values"
* output.value[x] ^fixedReference.type = "StructureDefinition"