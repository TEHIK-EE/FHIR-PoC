Instance: prescription-1018862239
InstanceOf: PoCPrescription
Description: "Generic prescription for enoxaparine sodium"
Usage: #example

* identifier.value = "1018862239"
* status = #active
* intent = #order
* authoredOn = "2023-08-22"
* subject = Reference(katipiiriylene)
* medication.reference = Reference(sodiumenoxaparine)
* requester = Reference(prescriberKatre)
* reason.concept.coding.code = #I22
* reason.concept.coding.system = "https://fhir.ee/rhk10"
* courseOfTherapyType.coding.code = #p
* courseOfTherapyType.coding.display = "Pidev"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.doseAndRate.doseQuantity.value = 2
* dosageInstruction.doseAndRate.doseQuantity.system = "https://fhir.ee/annustamise-yhik"
* dosageInstruction.doseAndRate.doseQuantity.code = #AN

* category.coding.code = #1
* category.coding.system = "https://fhir.ee/retsepti-liik"

* dispenseRequest.validityPeriod.start = "2023-08-22"
* dispenseRequest.validityPeriod.end = "2023-10-20"
* substitution.allowedBoolean = true

* extension[reimbursementRate].valueUnsignedInt = 50

Instance: sodiumenoxaparine
InstanceOf: PoCMedicationPrescribed
Description: "Enoxaparine sodium as a generic product on prescription"
Usage: #example

* extension[atc].valueCodeableConcept.coding
  * system = "http://www.whocc.no/atc"
  * code = #B01AB05
  * display = "enoxaparin"
* doseForm.coding.code = #1448
* doseForm.coding.display = "süstelahus süstlis"
* doseForm.coding.system = "https://fhir.ee/ravimvorm"
* totalVolume.value = 10
* extension[sizeOfItem].valueQuantity
  * value = 0.2
  * code = #ML
  * system = "https://fhir.ee/yhik"
* ingredient.item.concept.coding
  * code = #12116
  * display = "naatriumenoksapariin"
  * system = "https://fhir.ee/toimeained"
* ingredient.isActive = true
* ingredient.strengthRatio.numerator
  * value = 2000
  * code = #RÜ
  * system = "https://fhir.ee/yhik"
* ingredient.strengthRatio.denominator
  * value = 0.2
  * code = #ML
  * system = "https://fhir.ee/yhik"
