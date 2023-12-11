Profile: PoCPrescription
Parent: MedicationRequest
Id: poc-prescription
Title: "PrescriptionPoC"
Description: "Simplified prescription profile. Not for actual implementation. Inspired by Estonian national eP."
* ^status = #draft
* ^publisher = "TEHIK"
* identifier 1..1
  * ^short = "Retsepti number"
* intent.value = #order
// * intent 0..0
* status 1..1 
  * ^short = "Retsepti staatus"
* statusChanged 0..1 
  * ^short = "Annulleerimise kuupäev"
* statusReason 0..1 
  * ^short = "Annulleerimise põhjus"
* authoredOn 1..1 
  * ^short = "Retsepti koostamise kuupäev"
* subject only Reference(PoCPatientVerified) 
  * ^short = "Patsient (loogiline referents MPI patsiendile?)"
* medication only Reference(PoCMedicationPrescribed)
  * ^short = "Ravim"
  * concept 0..0
* requester only Reference(PoCPractitionerRole)
  * ^short = "Väljakirjutanud arst (loogiline referents registrikirjele?)"
* reason 1..1
  * ^short = "Diagnoos (RHK-10)"
* reason.reference 0..0
* courseOfTherapyType 1..1
  * ^short = "Ravikuuri tüüp"
* dosageInstruction 1..1 
  * ^short = "Ravikuur. Tänasel retseptil on lubatud üks, tulevikus haiglaravimitel mitu dosageInstruction plokki."
  * sequence 0..0
  * text 0..0
  * additionalInstruction 0..0
  * patientInstruction 0..0
  * timing 1..1
    * event 0..0
    * repeat 0..1
      * bounds[x] 0..1
      * boundsDuration 0..1 
        * ^short = "Ravikuuri pikkus päevades"
        * unit 0..0
        * value 1..1
        * system 0..0
        * code 0..0
        * comparator 0..0
      * count 0..0
      * countMax 0..0
      * duration 0..0
      * durationMax 0..0
      * durationUnit 0..0
      * frequency 0..1 
        * ^short = "Mitu korda (ajaühikus)"
      * frequencyMax 0..0
      * period 0..1 
        * ^short = "(mitu korda) aja(ühikus)"
      * periodMax 0..0
      * periodUnit 0..1
        * ^short = "(mitu korda aja)ühikus"
      * dayOfWeek 0..0
      * when 0..0
      * offset 0..0
    * code 0..0
  * asNeeded 0..0
  * asNeededFor 0..0
  * site 0..0
  * route 0..0
  * method 0..0
  * doseAndRate 1..1
    * type 0..0
    * doseRange 0..0
    * doseQuantity 1..1
      * unit 0..0
      * value 1..1
      * system 1..1
      * code 1..1
    * rate[x] 0..0
  * maxDosePerPeriod 0..0
  * maxDosePerAdministration 0..0
  * maxDosePerLifetime 0..0
* category 1..* 
  * ^short = "Retsepti liik (tuleks slice'ida kaheks (liik ja kordsus))"
  // slicida
* note 0..1 
  * ^short = "Arsti selgitused"
  * author[x] 0..0
  * time 0..0
  * text 1..1
    * ^short = "Arsti selgitused tekstina"
* dispenseRequest.validityPeriod 1..1
  * ^short = "Retsepti kehtivusaeg"
* substitution
  * allowedBoolean 1..1
  * reason 0..1 
    * ^short = "Asendamatuse põhjus"
* extension contains reimbursement-rate named reimbursementRate 1..1
* extension[reimbursementRate]
  * ^short = "Soodustuse määr protsentides (0-100)"


* basedOn 0..0
* priorPrescription 0..0
* groupIdentifier 0..0
* priority 0..0
* doNotPerform 0..0
* informationSource 0..0
* encounter 0..0
* supportingInformation 0..0
* reported 0..0
* performer 0..0
* performerType 0..0
* device 0..0
* recorder 0..0
* insurance 0..0
* renderedDosageInstruction 0..0
* effectiveDosePeriod 0..0
* dispenseRequest
  * initialFill 0..0
  * dispenseInterval 0..0
  * numberOfRepeatsAllowed 0..0
  * quantity 0..0
  * expectedSupplyDuration 0..0
  * dispenser 0..0
  * dispenserInstruction 0..0
  * doseAdministrationAid 0..0
* eventHistory 0..0
* contained 0..0
* modifierExtension 0..0


Profile: PoCMedicationPrescribed
Parent: Medication
Id: poc-medication
Title: "MedicationPoC"
Description: "Simplified medication profile. Not for actual implementation"

* identifier 0..1
  * ^short = "Pakendi kood (pakendipõhisel retseptil)"
* doseForm 1..1
* totalVolume 1..1 
* totalVolume only SimpleQuantity
  * value 1..1
    * ^short = "Ühikute koguhulk"
  * unit 0..0
  * system 0..1
  * code 0..1
    * ^short = "Ühikute koguhulga ühik"
* extension contains number-of-packages named numberOfPackages 0..1
* extension[numberOfPackages]
  * ^short = "Pakendite arv (TK)"  
* ingredient 1..*
  * item 1..1 
  * item only Reference(Substance)
  * isActive 1..1
    * value = true
  * strengthRatio 1..1
    * ^short = "Toimeaine tugevus"
* extension contains medicinal-product-name named name 0..1
* extension[name]
  * ^short = "Ravimpreparaadi nimi"
* extension contains medicinal-product-classification named atc 1..1
* extension[atc]
  * ^short = "ATC kood"
* extension contains size-of-item named sizeOfItem 0..1
* extension[sizeOfItem]
  * valueQuantity 1..1
    * value 1..1
      * ^short = "Tüki suurus"
    * unit 0..0
    * system 1..1
    * code 1..1
      * ^short = "Tüki suuruse ühik"
* code 0..0
* status 0..0
* marketingAuthorizationHolder 0..0
* batch 0..0
* definition 0..0


