Logical: MedicationShortTJT
Title: "Medication Short TJT - logical model"
Description: "Medication information."

* identifier 1..* Class "Business identifier for this medication." "Ravimi identifikaator."
  * packagedProductIdentifier 0..* II "Identifier at the package level, can be PCID or national" "Pakendi kood näiteks pakendipõhisel retseptil."
* classification 0..1 Class "Code for the product that is actually being specified, in established terminologies" "Ravimi klassifikatsioon."
  * classificationATC 0..1 CD "ATC code" "ATC klassifikatsioon"
  * classificationOther 0..* CD "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)" "Teine klassifikatsioon."
* productName 0..* Class "Name of the product (full name, invented name, other)." "Ravimi nimetus."
  * name 0..1 ST "Name that is relevant for the users." "Ravimi nimi pakendil."
* sizeOfItem 0..1 PQ "Manufactured item quantity for liquids (3ml/vial)." "Pakkeühiku suurus."
* doseForm 0..* CD "Dose form" "Ravimvorm"
* totalVolume 0..1 PQ "Number of  manufactured items in this product (5 vials, 30 tablets)." "Ühikute koguhulk."
* ingredient 1..* Class "Ingredients" "Koostisaine, toimeaine, aine."
  * role 1..1 BL "Role of ingredient (active ingredient, excipient)." "Toimeaine tunnus ehk kas on toimeaine või mitte."
  * substance 1..1 CD "Substance" "Aine või toimeaine kood."
  * strength 1..1 RTO "Concentration or presentation strength of the precise active ingredient." "Ravimi toimeaine sisaldus ja ühik või toimaine mahu sisaldus."
       
