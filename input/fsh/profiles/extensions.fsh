Extension: MedicinalProductName
Id: medicinal-product-name
Description: "Registered name for the medicinal product."
* value[x] only string
* valueString 1..1
  * ^maxLength = 500


Extension: MedicinalProductClassification
Id: medicinal-product-classification
Description: "Classification of the product, e.g. ATC."
* value[x] only CodeableConcept

Extension: NumberOfPackages
Id: number-of-packages
Description: "Number of packages prescribed in case of package-specific prescription"
* value[x] only positiveInt

Extension: SizeOfItem
Id: size-of-item
Description: "Size of medicinal product item (3ml)."
* value[x] only SimpleQuantity

Extension: ReimbursementRate
Id: reimbursement-rate
Description: "Reimbursement rate"
* value[x] only unsignedInt
* valueUnsignedInt
  * ^minValueUnsignedInt = 0
  * ^maxValueUnsignedInt = 100 