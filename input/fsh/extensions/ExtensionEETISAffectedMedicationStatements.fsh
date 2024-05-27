Extension: ExtensionEETISAffectedMedicationStatements
Id: ee-tis-affected-medication-statements
Description: "This extension is used in EETISMedicationInteraction profile to identify all medication statements which are related to interaction."
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-02-23T08:41:33.7774358+00:00"
* ^context.type = #element
* ^context.expression = "ClinicalUseDefinition"
* value[x] only Reference(EETISMedicationStatement)
* value[x] ^short = "_MedicationStatement_ including medication which interacts with other ==medication=="
* value[x] ^definition = "Ravimiskeemi rida, millel on koostoime"