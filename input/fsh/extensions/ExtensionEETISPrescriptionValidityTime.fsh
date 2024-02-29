Extension: ExtensionEETISPrescriptionValidityTime
Id: ee-tis-prescription-validity-time
Description: "Retsepti kehtivuse aeg. For expressing the validity of the prescription(s) in one MedicationStatement."
* ^status = #draft
* ^date = "2023-10-03T10:47:00.9373224+00:00"
* ^context.type = #element
* ^context.expression = "MedicationStatement"
* . ^short = "Retsepti kehtivuse aeg."
* . ^definition = "For expressing the validity of the prescription(s) in one MedicationStatement."
* value[x] only dateTime
* value[x] ^short = "Retsepti kehtivuse algus"
* value[x] ^definition = "Ravimiskeemi reaga seotud retsepti kehtivus (kirjutamise algusaeg)."