Instance: PractRoleN98765
InstanceOf: PractitionerRole
Usage: #example
* meta.profile = "https://fhir.ee/StructureDefinition/ee-practitioner-role"
* active = true
* period.start = "2012-01-01"
* practitioner = Reference(N98765)
* organization = Reference(rh)
* code[0] = $practitioner-role#nurse "Nurse"
* code[+] = $ee-occupation#22210502 "Õde"
* specialty[0] = $sct#394810000 "Rheumatology"
* specialty[+] = $ee-medre-specialty#N200 "Kliiniline õendus"