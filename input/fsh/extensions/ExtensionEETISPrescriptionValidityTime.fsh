Extension: ExtensionEETISPrescriptionValidityTime
Id: ee-tis-prescription-validity-time
Description: "Retsepti kehtivuse lõpu aeg ravimiskeemi rea kontekstis. Validity end date of a prescription in a MedicationStatement."
* ^status = #draft
* ^date = "2023-10-03T10:47:00.9373224+00:00"
* ^context.type = #element
* ^context.expression = "MedicationStatement"
* . ^short = "Retsepti kehtivuse lõpu aeg."
* . ^definition = "For expressing the validity end date of the prescription(s) in one MedicationStatement."
* value[x] only dateTime
* value[x] ^short = "Retsepti kehtivuse lõpp"
* value[x] ^definition = "Ravimiskeemi reaga seotud retsepti kehtivuse lõpp."