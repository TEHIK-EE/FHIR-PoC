Extension: ExtensionEETISAffectedMedicationStatements
Id: ee-tis-affected-medication-statements
Description: "This extension is used in EETISMedicationInteraction profile to identify all medication statements which are related to interaction."
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-02-23T08:41:33.7774358+00:00"
* ^context.type = #element
* ^context.expression = "ClinicalUseDefinition"
* extension.value[x] only Reference(EETISMedicationStatement)
* extension.value[x] ^short = "MedicationStatement including medication which interacts with other medication"
* extension.value[x] ^definition = "Ravimiskeemi rida, millel on koostoime"