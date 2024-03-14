Logical: MedicationTJT
Title: "Medication for clinical workflowsTJT"
Description: "Medication information."

* identifier 1..* Class "Business identifier for this medication." "Ravimi identifikaator."
  * packagedProductIdentifier 0..* II "Identifier at the package level, can be PCID or national" "Pakendi kood näiteks pakendipõhisel retseptil."
* classification 0..1 Class "Code for the product that is actually being specified, in established terminologies" "Ravimi klassifikatsioon."
  * classificationATC 0..1 CD "ATC code" "ATC klassifikatsioon"
  * classificationOther 0..* CD "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)" "Teine klassifikatsioon."
* productName 0..* Class "Name of the product (full name, invented name, other)." "Ravimi nimetus."
  * name 1..1 ST "Name that is relevant for the users." "Ravimi nimi pakendil."
* routeOfAdministration 0..* CD "The path by which the product is taken into or makes contact with the body." "Manustamisviis või manustamistee."
* doseForm 0..* CD "Dose form" "Ravimvorm"
* device 0..* Class "Administration device included in the product" "Manustamisvahend"
  * deviceQuantity 1..1 PQ "Number of such devices" "Manustamisvahendite arv"
  * device 1..1 CD "Device coded" "Manustamisvahendi loend"
* manufacturedItem 0..* Class "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined" "Pakkeühik, toodetud üksus."
  * manufacturedDoseForm 0..1 CD "Dose form" "Konkreetse ravimi toodetud üksuse ravimvorm"
  * unitOfPresentation 0..1 CD "Unit of presentation for the manufactured item (tablet, vial, tube)." "Pakkeühik, näiteks tablett, ampull, viaal."
  * containedQuantity 0..1 PQ "Manufactured item quantity for liquids (3ml/vial)." "Pakkeühiku suurus."
  * amount 0..1 PQ "Number of such manufactured items in this product (5 vials)." "Pakkeühiku arv."
    * ingredient 1..* Class "Ingredients" "Koostisaine, aine."
      * role 1..1 BL "Role (active ingredient, excipient)." "Toimeaine tunnus, kas on toimeaine või mitte."
      * substance 1..1 CD "Substance" "Aine kood"
      * strengthInfo 1..* Class "Concentration or presentation strength" "Ravimi toimeaine tugevus."
        * strength 1..1 RTO "Concentration or presentation strength of the precise active ingredient" "Ravimi tugevus ühe toodetud üksuse kohta või konsentratsioon"
        * strengthType 0..1 CD "Type of strength that is expressed"
        * strengthSubstance 0..1 CD "Substance that the strength refers to, if different from the main substance"
* packedProduct 1..1 Class "A medically related item or items of any type, in a container or package." "Ravim välimises pakendis." 
  * packSize 0..* PQ "Overall amount of product in one package." "Ravimi koguhulk."
 




