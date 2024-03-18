Instance: medication-interaction1
InstanceOf: ClinicalUseDefinition
Usage: #example
Description: "Example of a medication interaction between drug A and B" 
* meta.profile = "https://fhir.ee/StructureDefinition/ee-tis-medication-interaction"
* status = #active
* type = #interaction
* category[0] = $clinical-importance-category-VS#4 "Kliiniliselt oluline koostoime, mida saab juhtida n&#228;iteks annuse kohandamisega"
* category[+] = $scientific-documentation-category-VS#4 "Andmed on saadud asjakohase patsiendir&#252;hma seas korraldatud kontrollitud uuringutest"
* subject = Reference(metformin)
//* interaction.interactant.item.reference = Reference(adrenalin)/
* interaction.type = $interaction-type#drug-drug "drug to drug interaction"
* interaction.effect.concept.text = "Consequences. Ravim A vererõhku alandav ja diureetiline toime võib ravim B-ga kooskasutamisel nõrgeneda ning suurendada kehakaalu. Vererõhk kõrgeneb enamasti vähe või mõõdukalt, kuid hüpertensiooni tüsistuste tekke oht võib suureneda, eriti eakatel."
* interaction.incidence.text = "D0"
* interaction.management.text = "Recommendation. Kui kooskasutamine on vajalik, on soovitatav hoolikalt jälgida vererõhku ja kehakaalu. Ravimi A annust võib olla vaja kohandada. Kaaluda raviks xxx, kuna Ravim B ei vähenda toimet."
