Profile: PoCPractitionerRole
Parent: EEBasePractitionerRole
Id: poc-practitioner-role
Title: "PractitionerRolePoC"
Description: "Simplified profile for practitioner+organization. Not for actual implementation."

* contained 0..0
* modifierExtension 0..0
* extension 0..0
* active = true
* period 0..0
* practitioner
  * reference 0..0
  * type 0..0
  * identifier 1..1
    * use 0..0
    * type 0..0
    * system = "https://fhir.ee/sid/pro/est/pho"
    * value 1..1
      * ^short = "Arsti kood"
      * ^maxLength = 20
    * period 0..0
    * assigner 0..0
  * display 0..1
    * ^short = "Arsti nimi (retsepti vaatamise päringus)"
    * ^maxLength = 1000
* organization
  * reference 0..0
  * type 0..0
  * identifier 1..1
    * use 0..0
    * type 0..0
    * system = "https://fhir.ee/sid/org/est/br"
    * value 1..1
      * ^short = "TTO kood (äriregistris)"
      * ^maxLength = 20
    * period 0..0
    * assigner 0..0
  * display 0..1
    * ^short = "TTO nimi (retsepti vaatamise päringus)"
    * ^maxLength = 1000
* code 0..0
* specialty 1..1
* specialty[eriala] 1..1
  * ^short = "Eriala"
  * text 0..0
* location 0..0
* healthcareService 0..0
* contact
  * purpose 0..0
  * name 0..0
  * address 0..0
  * organization 0..0
  * period 0..0
  * telecom ^slicing.discriminator.type = #pattern
  * telecom ^slicing.discriminator.path = "$this"
  * telecom ^slicing.rules = #closed
  * telecom contains phone 0..1 and email 0..1
  * telecom[phone]
    * system = #phone
    * use = #work
    * value 1..1
    * ^short = "Arsti telefon"
    * rank 0..0
    * period 0..0
  * telecom[email]
    * system = #email
    * use = #work
    * value 1..1
    * ^short = "Arsti email"
    * rank 0..0
    * period 0..0
* characteristic 0..0
* communication 0..0
* availability 0..0
* endpoint 0..0