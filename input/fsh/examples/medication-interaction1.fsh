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
//* interaction.interactant.item.reference = Reference(alprazolam)/
* interaction.type = $interaction-type#drug-drug "drug to drug interaction"
* interaction.effect.concept.text = "Consequences. Tiasiidide verer&#245;hku alandav ja diureetiline toime v&#245;ib MSPVAga kooskasutamisel n&#245;rgeneda ning suurendada kehakaalu. Verer&#245;hk k&#245;rgeneb enamasti v&#228;he v&#245;i m&#245;&#245;dukalt, kuid h&#252;pertensiooni t&#252;sistuste tekke oht v&#245;ib suureneda, eriti eakatel."
* interaction.incidence.text = "D0"
* interaction.management.text = "Recommendation. Kui kooskasutamine on vajalik, on soovitatav hoolikalt jälgida vererõhku ja kehakaalu. Ravimi A annust võib olla vaja kohandada. Kaaluda raviks xxx, kuna Ravim B ei vähenda toimet."
