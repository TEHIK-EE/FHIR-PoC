Profile: PoCPatient
Parent: EEBasePatient
Id: poc-patient
Title: "PatientPoC"
Description: "Common MPI limitations on Patient resouce. MPI profiili replica."
* ^publisher = "HL7 Estonia"
* ^abstract = true
* photo ..0
* generalPractitioner ..0
* managingOrganization ..0
* link ..0
* contact ..0
* maritalStatus ..0
* communication MS 


Profile: PoCPatientVerified
Parent: PoCPatient
Id: poc-patient-verified
Title: "PatientVerifiedPoC"
Description: "Retseptsioonis identifitseeritud MPI Patsient. MPI profiili replica."
* ^publisher = "HL7 Estonia"
* name 1..* MS
* name[official] 1.. MS
* name[official] ^short = "Ametlik nimi"