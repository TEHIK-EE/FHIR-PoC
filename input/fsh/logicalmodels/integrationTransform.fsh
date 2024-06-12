Logical: IntegrationTransormTJT
Title: "Integration transform TJT - logical model"
Description: "Prototype of integration model with FHIR datatypes in order to make transformations. Starting with medication treatment line"

* medicationTreatmentline 0..* BackboneElement "Treatment line representing some sort of medication." "Ravimiskeemi rida"
  * identifier 0..* Identifier "Unique business identifier(s) for the medication treatment line. Identifiers associated with this Medication Statement that are defined by business processes " "Ravimiskeemi rea universaalne identifikaator" 
  * status 1..1 code "A code representing the status of recording the medication statement, recorded or draft." "Ravimiskeemi rea staatus. Kinnitatud-recorded, kinnitamata-draft."
  * verification 0..* BackboneElement "verification of te treatment line" "ravimiskeemi rea kinnitamine"
    * Practitioner 1..1 Reference(PractitionerTJT) "HCP (or device, if authorized) verifying the treatments/overview" "Tervishoiutöötaja, kes kinnitas ravimiskeemi."  
    * verificationTime 1..1 dateTime "The date and time when this medication treatment line was verified" "Kinnitamise aeg"
  * derivedFrom 0..* Identifier "Prescriptions that are connected to this Medication Treatment Line" "Seotud retseptid, siin on näiteks retsepti numbrid"
  * indication 0..* CodeableConcept "Reason why the product has been prescribed to the patient, or why the patient claims to be taking it" "Diagnoos või põhjus, miks patsient ravimit võtab"
  * indicationText 0..1 string "Additional instructions" "Lisa tekst, miks ravimit võetakse."
  * comment 0..* BackboneElement "Comment on the individual line" "Ravimiskeemi rea kommentaar"
    * Author 1..1 Reference(PractitionerTJT) "Author of the comment (Pharmacist, doctor, social carer)." "Kommentaari autor."
    * Date 1..1 dateTime "Time of comment" "Kommentaari aeg"
    * commentText 1..1 string "Content of the comment" "Kommentaari sisu"
* medication 1..* BackboneElement "Medicinal product" "Ravim"
  * identifierMedication 0..* BackboneElement "Business identifier for this medication." "Ravimi identifikaator."
    * packagedProductIdentifier 0..* Identifier "Identifier at the package level, can be PCID or national" "Pakendi kood näiteks pakendipõhisel retseptil."
    * classification 0..1 BackboneElement "Code for the product that is actually being specified, in established terminologies" "Ravimi klassifikatsioon."
      * classificationATC 0..1 code "ATC code" "ATC klassifikatsioon"
      * classificationOther 0..* CodeableConcept "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)" "Teine klassifikatsioon."
  * productName 0..* Backbonelement "Name of the product (full name, invented name, other)." "Ravimi nimetus."
    * name 0..1 string "Name that is relevant for the users." "Ravimi nimi pakendil."
  * patientPersonalMedication 0..1 boolean "Whether the administered medication was patient's own or given by a healthcare professional." "Tõeväärtus, mis näitab, kas manustatav ravim on patsiendi isiklik või antud ühekordsena tervishoiu töötaja poolt - Kiirabikaardil manustatud ravimite sektsioonis" 
  * routeOfAdministration 0..* CodeableConcept "The path by which the product is taken into or makes contact with the body." "Manustamisviis või manustamistee."
  * routeOfAdministrationSpecified 0..1 string "Route of administration specified with a free text field." "Ravimi manustamistee täpsustus - Kiirabikaardil elustamisel kasutatud ravimid ja manstatud ravimite sektsioonis."
  * doseForm 0..* CodeableConcept "Dose form" "Ravimvorm"
  * doseFormSpecified 0..1 string "Specified dose form" "Ravimvormi täpsustus - Kiirabikaardil elustamisel kasutatud ravimid ja manustatud ravimite sektsioonis."
  * medicationInfoType 0..1 CodeableConcept "Information source or type of medication (prescription, verbal, given by the healthcare worker)" "Ravimi info allikas/ravimi andmete tüüp (retsepti ravim, tervishoiutöötaja poolt antud, elustamiseks kasutatud jne) - Kasutatav kiirabikaardil ja saatekirjal ja epikriisidel"
  * device 0..* BackboneElement "Administration device included in the product. Device that is integral to the medicinal product, in effect being considered as an ingredient of the medicinal product." "Ravimiga lahutamatult seotud manustamisvahend, näiteks ravimi pakendis ravimiga kaasas olev süstel."
    * deviceQuantity 1..1 Quantity "Number of such devices" "Manustamisvahendite arv"
    * device 1..1 CodeableConcept "Device coded" "Manustamisvahendi loend"
  * manufacturedItem 0..* BackboneElement "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined" "Pakkeühik, toodetud üksus."
    * manufacturedDoseForm 0..1 CodeableConcept "Dose form" "Konkreetse ravimi toodetud üksuse ravimvorm, näiteks siirup, graanulid, kõvakapsel."
    * unitOfPresentation 0..1 CodeableConcept "Unit of presentation for the manufactured item (tablet, vial, tube)." "Pakkeühik, näiteks tablett, ampull, viaal."
    * containedQuantity 0..1 Quantity "Manufactured item quantity for liquids (3ml/vial)." "Pakkeühiku suurus."
    * amount 0..1 Quantity "Number of such manufactured items in this product (5 vials)." "Pakkeühiku arv."
      * ingredient 1..* BackboneElement "Ingredients" "Koostisaine, toimeaine, aine."
        * role 1..1 boolean "Role (active ingredient, excipient)." "Toimeaine tunnus ehk kas on toimeaine või mitte."
        * substance 1..1 CodeableConcept "Substance" "Aine või toimeaine kood"
        * strengthInfo 1..* BackboneElement "Concentration or presentation strength" "Ravimi toimeaine sisaldus ja ühik või toimaine mahu sisaldus."
          * strength 1..1 Ratio "Concentration or presentation strength of the precise active ingredient" "Ravimi toimeaine sisaldus ja ühik või toimaine mahu sisaldus."
          * strengthType 0..1 CodeableConcept "Type of strength that is expressed" 
          * strengthSubstance 0..1 CodeableConcept "Substance that the strength refers to, if different from the main substance"
  * packedProduct 0..1 BackboneElement "A medically related item or items of any type, in a container or package." "Ravim välimises pakendis." 
    * packSize 0..* Quantity "Overall amount of product in one package." "Ravimi koguhulk."
    * productCode 0..* string "Product code on the package of packaged product.""Tootekood. Võimaldab tuvastada ravimi nimetuse, ravimvormi, toimeaine ja selle sisalduse, ravimipakendi suuruse ja selle tüübi."
    * serialNumber 0..* string "Serial number on the medication package." "Seerianumber. Unikaalne kood ravimi pakendil"
    * batchNumber 0..* string "Batch number on the medication package. The assigned lot number of a batch of the specified product. " "Partiinumber, mis on ravimi pakendil."
    * expirationDate 0..* dateTime "When this specific batch of product will expire." "Ravimi kõlblikkuse aeg, näitab, millal konkreetne partii ravimit aegub."
