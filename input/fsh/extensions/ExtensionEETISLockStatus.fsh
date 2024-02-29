Extension: ExtensionEETISLockStatus
Id: ee-tis-lock-status
Description: "Broneering retseptil. When pharmacy locks the prescription for ordering unauthorized medication for patient."
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2023-12-05T08:56:43.9409623+00:00"
* ^context[0].type = #element
* ^context[=].expression = "MedicationRequest"
* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"
* . ^short = "Broneering retseptil."
* . ^definition = "Kasutatakse juhul kui on tegemist müügiloata ravimi retseptiga, mis on saanud positiivse otsuse ning ootab apteegis tellitavat ravimit. \r\n\r\nWhen pharmacy locks the prescription for ordering unauthorized medication for patient."
* extension contains
    lockStatus 0..* and
    lockOwner 0..*
* extension[lockStatus] ^short = "Broneeritud apteegis"
* extension[lockStatus].value[x] only boolean
* extension[lockStatus].valueBoolean ^definition = "True - prescription is locked for certain pharmacy.\r\nFalse - prescription is not locked."
* extension[lockOwner] ^short = "Broneeringu teinud apteek"
* extension[lockOwner] ^definition = "Pharmacy who locked the prescription for ordering unauthorized medication.\r\n\r\nMay be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension."
* extension[lockOwner].value[x] only string
//* value[x] ^slicing.discriminator.type = #type
//* value[x] ^slicing.discriminator.path = "$this"
//* value[x] ^slicing.rules = #open