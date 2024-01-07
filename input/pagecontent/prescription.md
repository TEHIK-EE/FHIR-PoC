### ePrescription

Data set section should correspond to the level that is currently provided in eHN PDF-guidelines. A table for clinical and political level people who want a quick overview of the content of the service. The most important implementation considerations should be provided as comments and guide the reader to the logical data models and more technical documentation.

#### Data Set
| Number | Data Element | Description | Implementation consideration |
|:-----|:-----|:-----|:-----|
|A1.4|Medicinal Product|....|....|
|A1.4.1|Name of medicinal product|Brand name of the authorised medicinal product. It has to be noted, that according to Implementing Directive 2012/52/EU additional requirements may apply.|Not applicable for generic prescriptions|
|A1.4.2|Identifier of medicinal product|Applicable identifier for the prescribed product. This could be medicinal product identifier, packaged product identifier, virtual product identifier, or pharmaceutical product identifier.|Product identifier may technically be a coded concept or an identifier. Identifier may not be applicable for generic prescriptions when product description is provided in structured form on the prescription.|

#### Full logical model

See the full logical data model for implementation guidance.

