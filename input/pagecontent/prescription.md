### ePrescription

Data set section should correspond to the level that is currently provided in eHN PDF-guidelines. A table for clinical and political level people who want a quick overview of the content of the service. The most important implementation considerations should be provided as comments and guide the reader to the logical data models and more technical documentation.  

#### Data Set

  
| Number | Data Element | Description | Implementation consideration |
|:-----|:-----|:-----|:-----|
|A1.4|Medicinal Product|....|....|
|A1.4.1|Name of medicinal product|Brand name of the authorised medicinal product. It has to be noted, that according to Implementing Directive 2012/52/EU additional requirements may apply.|Not applicable for generic prescriptions|
|A1.4.2|Identifier of medicinal product|Applicable identifier for the prescribed product. This could be medicinal product identifier, packaged product identifier, virtual product identifier, or pharmaceutical product identifier.|Product identifier may technically be a coded concept or an identifier. Identifier may not be applicable for generic prescriptions when product description is provided in structured form on the prescription.|
|A1.5.3|Dosage regimen|The regimen governing the dose quantity per single administration, the dose frequency, and/or speed of administration (in the event of intravenous administration). Note: this information may be used by the dispenser to calculate the quantity to be dispensed.|Dosaging information can be expressed in multiple ways. In most cases it can be a relatively simple structure, but in certain use cases (especially hospital environment), the structured dosaging information can be very complex. Please see the [logical data model](https://build.fhir.org/ig/IHE/pharm-mpd/StructureDefinition-DosagingInformation.html) for more detailed information.|


#### Full logical model

See the full logical data model for implementation guidance.
[ePrescription Logical Model](https://build.fhir.org/ig/IHE/pharm-mpd/StructureDefinition-MedicationPrescription.html) (currently link to IHE IG but close enough)
