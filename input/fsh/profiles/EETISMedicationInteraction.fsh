Profile: EETISMedicationInteraction
Parent: ClinicalUseDefinition
Id: ee-tis-medication-interaction
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-02-22T14:32:30.0668499+00:00"
* type = #interaction (exactly)
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^short = "Koostoime väljendamine tähe ja numbriga"
* category contains
    sliceClinicalImportance 0..* and
    sliceScientificDocumentation 0..*
* category[sliceClinicalImportance] from $clinical-importance-category-VS (required)
* category[sliceClinicalImportance] ^short = "LOEND VÕI TEKST Synbase? A categorisation of the issue, primarily for dividing warnings into subject heading areas such as \"Pregnancy\", \"Overdose\""
* category[sliceClinicalImportance] ^binding.description = "Clinical importance code (ABCD)"
* category[sliceClinicalImportance].text ^short = "A | B | C | D"
* category[sliceScientificDocumentation] from $scientific-documentation-category-VS (required)
* category[sliceScientificDocumentation] ^binding.description = "Scientific documentation code (01234)"
* category[sliceScientificDocumentation].text ^short = "0 | 1 | 2 | 3 | 4"
* subject 1..
* subject only Reference(EETISMedicationEPC)
* subject ^short = "Drug A"
* contraindication ..0
* indication ..0
* interaction.interactant.item[x] only Reference(EETISMedicationEPC)
* interaction.interactant.item[x] ^short = "Drug B"
* interaction.type = $interaction-type#drug-drug "drug to drug interaction" (exactly)
* interaction.type ^fixedCodeableConcept.text = "drug to drug interaction"
* interaction.effect ^short = "Consequences (SYNBASE VÄLJUNDIS)"
* interaction.effect.concept ^short = "Consequences"
* interaction.effect.concept.text ^short = "KUI POLE KODEERITAV"
* interaction.effect.reference ..0
* interaction.incidence ^short = "Classification (e.g. D0)"
* interaction.incidence ^definition = "Kombinatsioon category all olevatest numbritest ja tähtedest. The incidence of the interaction, e.g. theoretical, observed."
* interaction.incidence.text ^short = "Classification"
* interaction.management ..1
* interaction.management ^short = "RECOMMENDATION (SYNBASE VÄLJUNDIS)"
* interaction.management.text ^short = "KUI POLE KODEERITAV"
* population ..0
* library ^short = "SYNBASE? Logic used by the clinical use definition"
* library ^definition = "Logic used by the clinical use definition. SYNBASE?"
* undesirableEffect ..0
* warning ..0