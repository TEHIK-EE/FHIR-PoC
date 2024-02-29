Extension: ExtensionEETISCourseOfTherapyType
Id: ee-tis-course-of-therapy-type
Description: "Ravikuuri tüüp. Defines the type of medication course."
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-11-09T07:13:13.2413582+00:00"
* ^context.type = #element
* ^context.expression = "MedicationRequest"
* . ^short = "Ravikuuri tüüp."
* . ^definition = "Defines whether the medication course is fixed or continuous etc."
* value[x] only CodeableConcept
* value[x] from $ravikuuri-tyyp (preferred)
* value[x] ^short = "pidev | fikseeritud | vajadusel | muutuv | ühekordne"
* value[x] ^definition = "RAVIKUURI TÜÜP. Value of extension - must be one of a constrained set of the data types (see [Extensibility](extensibility.html) for a list)."
* value[x] ^binding.description = "Course of therapy type"
* value[x].coding from $ravikuuri-tyyp (preferred)
* value[x].coding ^binding.description = "Ravikuuri tüüp"