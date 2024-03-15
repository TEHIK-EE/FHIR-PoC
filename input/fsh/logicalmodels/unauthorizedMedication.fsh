Logical: UnauthorizedMedication
Title: "Unauthorized Medication TJT - logical model"
Description: "Used for requesting permit for unauthorized medication"
* identifier 1..1 II "Unauthorized medication request number." "Müügiloata ravimi taotluse number."
* requestReason 1..1 CD "Unauthorized medication reason." "Müügiloata ravimi taotluse põhjus."
* status 0..1 CD "Status of unauthorized medication request can be positive or negative." "Müügiloata ravimi taotluse staatus."
* requestDate 1..1 DT "Date when the request was made." "Müügiloata ravimi taotluse kuupäev."
* requestDecision 0..1 CD "If requestStatus is negative there has to be a reason explaining the negative decision." "Müügiloata ravimi taotluse otsuse põhjus"