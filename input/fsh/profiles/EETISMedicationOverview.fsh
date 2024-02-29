Profile: EETISMedicationOverview
Parent: Bundle
Id: ee-tis-medication-overview
Description: "Ravimiskeem. Medication Overview gathers together all resources related to patient's prescribed and dispensed medication."
* ^version = "1.0.0"
* ^status = #retired
* ^experimental = true
* ^date = "2024-02-13T09:32:10.2376124+00:00"
* . ^short = "Ravimiskeem"
* . ^definition = "Ravimiskeem koosneb ravimiskeemiridadest. A container for a collection of resources."
* type = #document (exactly)
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resolve()"
* entry ^slicing.rules = #open
* entry contains
    medicationsStatementEntry 0..* and
    compositionEntry 0..* and
    practitionerEntry 0..* and
    practitionerRoleEntry 0..* and
    organizationEntry 0..* and
    patientEntry 0..* and
    deviceEntry 0..* and
    medicationEntry 0..* and
    pharmacyLocationEntry 0..*
* entry[medicationsStatementEntry].resource only EETISMedicationStatement
* entry[compositionEntry].resource only EETISDeviceTJT
* entry[practitionerEntry].resource only EETISPractitioner
* entry[practitionerRoleEntry].resource only EETISPractitionerRole
* entry[organizationEntry].resource only EETISOrganization
* entry[patientEntry].resource only EETISPatient
* entry[deviceEntry].resource only EETISDeviceTJT
* entry[medicationEntry].resource only EETISMedicationEPC