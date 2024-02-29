Extension: ExtensionEETISMedicationLeft
Id: ee-tis-medication-left
Description: "Jääk. Extension describing how much medication is left on prescription."
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-10-03T10:47:00.9373224+00:00"
* ^context.type = #element
* ^context.expression = "MedicationStatement"
* . ^short = "Jääk."
* . ^definition = "Jääk. Extension describing how much medication is left on prescription."
* value[x] only integer
* value[x] ^short = "Ravimi jääk ravimiskeemi real."
* value[x] ^definition = "How much medication is left on one MedicationStatement. Value is to be calculated."