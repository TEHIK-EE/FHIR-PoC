Extension: ExtensionEETISConsentWithInteractions
Id: ee-tis-consent-with-interactions
Description: "This extension is used in EETISMedicationList profile to express whether or not the practitioner adding medicines considered the interactions and consented with them."
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-02-23T08:41:33.7774358+00:00"
* ^context.type = #element
* ^context.expression = "List"
* value[x] only boolean
* value[x] ^short = "Whether or not practitioner agrees with interactions"
* value[x] ^definition = "Arsti nõusolek koostoimetega"