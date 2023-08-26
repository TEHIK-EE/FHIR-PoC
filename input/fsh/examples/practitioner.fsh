Instance: Pharmacist
InstanceOf: PoCPractitionerRole
Description: "Pharmacist dispensing"
Usage: #example

* id = "pharmacistRutt"
* practitioner.identifier.value = "P01176"
* practitioner.display = "Rutt Lindström"
* organization.identifier.value = "74000091"
* organization.display = "Haigekassa"
* contact.telecom[phone].value = "apteek123@tehik.ee"
* contact.telecom[phone].system = #phone


Instance: Doctor
InstanceOf: PoCPractitionerRole
Description: "Doctor prescribing"
Usage: #example
* id = "prescriberKatre"
* practitioner.identifier.value = "D09870"
* practitioner.display = "Katre Pruul"
* organization.identifier.value = "11228309"
* organization.display = "OÜ Hekamerk"
* specialty.coding.code = #E600
* specialty.coding.display = "Ilma erialata arst"
* specialty.coding.system = "http://medre.ee/eriala"
* contact.telecom[phone].value = "+372600000"
* contact.telecom[phone].system = #phone
* contact.telecom[email].value = "testdoktor123@tehik.ee"
* contact.telecom[email].system = #email