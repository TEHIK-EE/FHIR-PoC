Extension: ExtensionEETISMedicinalProductClassification
Id: ee-tis-medicinal-product-classification
Description: "Classification of the product, e.g. ATC."
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-02-15T06:15:37.9998371+00:00"
* ^publisher = "TEHIK"
* ^contact[0].name = "TEHIK"
* ^contact[=].telecom[0].system = #url
* ^contact[=].telecom[=].value = "https://www.tehik.ee"
* ^contact[=].telecom[+].system = #email
* ^contact[=].telecom[=].value = "fhir@tehik.ee"
* ^contact[+].name = "Rutt Lindström"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "rutt.lindstrom@tehik.ee"
* ^contact[=].telecom.use = #work
* ^jurisdiction = urn:iso:std:iso:3166#EE "Estonia"
* ^context.type = #element
* ^context.expression = "Medication"
* . ^short = "Klassifikatsioon"
* . ^definition = "Classification of the product, e.g. ATC."
* value[x] only CodeableConcept
//* value[x] ^slicing.discriminator.type = #type
//* value[x] ^slicing.discriminator.path = "$this"
//* value[x] ^slicing.rules = #open
//* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from $atc-ee-VS
//* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept ^short = "ATC klassifikatsioon"
* valueCodeableConcept ^definition = "Medication classified according to ATC system."
//* valueCodeableConcept ^binding.description = "ATC"
//* valueCodeableConcept.coding from $atc (preferred)
//* valueCodeableConcept.coding ^definition = "ATC. \r\n\r\nA reference to a code defined by a terminology system."
//* valueCodeableConcept.coding ^binding.description = "ATC"