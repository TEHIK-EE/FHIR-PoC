Profile: TestServiceRequest
Parent: ServiceRequest
Id: test-request
Title: "Service Request for radiology"
Description: "Service request profile for radiological procedures"
* ^status = #draft
* ^publisher = "TEHIK"
* identifier 1..1
  * ^short = "saatekirja number"
* category 1..1
  * ^short = "Kood radioloogiliseks protseduuriks"
* code 1..1
  * ^short = "Tellitav radioloogilise protseduuri kood"
