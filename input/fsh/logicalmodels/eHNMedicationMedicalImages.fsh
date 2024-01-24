Logical: EHNmedicationMedicalImages
Parent: Element
Id: ehnMedicationMedicalImages
Description: "Medication data from Dataset section of eHN Medical Images guideline (as is). A.5.2. Medication section includes information about medication administered during the medical imaging
examination (contrast, sedation, stress agents), etc."

* brandName 0..* string "A.5.2.1. Brand name" "Brand name of biological medicinal product or when justified by the health professional (ref. Commission Directive 2012/52/EU)."
* code 0..* Identifier "A.5.2.2. Product code" "IDMP"
* activeIngredientList 0..* CodeableConcept "A.5.2.3 Active ingredient list" "Substance that alone or in combination with one or more other ingredients produces the intended activity of a medicinal product. Example: paracetamol. Preferred code system ATC (IDMP identifier when available)."
* strength 0..* BackboneElement "A.5.2.4 Strength" "The content of the active ingredient expressed quantifiably per dosage unit, per unit of volume or per unit of weight, according to the pharmaceutical dosage form. Example: 500 mg per tablet. Preferred code systems UCUM, EDQM Standard Terms." 
* pharmaceuticalDoseForm 0..* CodeableConcept "A.5.2.5 Pharmaceutical dose form" "The form in which a pharmaceutical product is presented in the medicinal product package (e.g. tablet, syrup). Preferred code system EDQM Standard Terms."
* routeOfAdministration 0..* CodeableConcept "A.5.2.6 Route of administration" "Path by which the pharmaceutical product is taken into or makes contact with the body. Preferred code system: EDQM Standard Terms."
* dateAndTime 0..* dateTime "A.5.2.7 Date and time" "Date and time of medication. ISO 8601"