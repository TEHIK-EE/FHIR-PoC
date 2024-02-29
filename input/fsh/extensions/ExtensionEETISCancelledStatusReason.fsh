Extension: ExtensionEETISCancelledStatusReason
Id: ee-tis-cancelled-status-reason
Description: "Annulleerimise põhjus. Kui retsept annulleeritakse, tuleb loendist valida põhjus."
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-01-31T13:55:03.1985103+00:00"
* ^context.type = #element
* ^context.expression = "MedicationStatement"
* . ^short = "Annulleerimise põhjus"
* value[x] only CodeableConcept
* value[x] from $retsepti-annulleerimise-pohjus (preferred)
* value[x] ^short = "Annulleerimise põhjus. Loend."
* value[x] ^binding.description = "Annulleerimise põhjus. Loend."