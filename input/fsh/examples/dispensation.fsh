Instance: dispensation-1018862239
InstanceOf: PoCDispensation
Description: "Dispensation of generic prescription for enoxaparine sodium"
Usage: #example


* status = #completed
* medication.reference = Reference(clexane-1020081)
* subject = Reference(katipiiriylene)
* performer.actor = Reference(pharmacistRutt)
* authorizingPrescription = Reference(prescription-1018862239)
* quantity.value = 5
* whenHandedOver = 2023-08-27

Instance: clexane-1020081
InstanceOf: PoCMedicationDispensed
Description: "Dispensed product from the register of medicinal product"
Usage: #example

* identifier.value = "1020081"
* identifier.system = "http://ravimiregister.ee/pakendid"