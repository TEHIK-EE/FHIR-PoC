Logical: IntegrationTJT
Title: "Integration TJT - logical model"
Description: "Integration PoC"

* medication 1..* Class "Medicinal product" "Ravim"
  * identifierMedication 1..* Class "Business identifier for this medication." "Ravimi identifikaator."
    * packagedProductIdentifier 0..* II "Identifier at the package level, can be PCID or national" "Pakendi kood näiteks pakendipõhisel retseptil."
    * classification 0..1 Class "Code for the product that is actually being specified, in established terminologies" "Ravimi klassifikatsioon."
      * classificationATC 0..1 CD "ATC code" "ATC klassifikatsioon"
      * classificationOther 0..* CD "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)" "Teine klassifikatsioon."
  * productName 0..* Class "Name of the product (full name, invented name, other)." "Ravimi nimetus."
    * name 0..1 ST "Name that is relevant for the users." "Ravimi nimi pakendil."
  * routeOfAdministration 0..* CD "The path by which the product is taken into or makes contact with the body." "Manustamisviis või manustamistee."
  * doseForm 0..* CD "Dose form" "Ravimvorm"
  * device 0..* Class "Administration device included in the product. Device that is integral to the medicinal product, in effect being considered as an ingredient of the medicinal product." "Ravimiga lahutamatult seotud manustamisvahend, näiteks ravimi pakendis ravimiga kaasas olev süstel."
    * deviceQuantity 1..1 PQ "Number of such devices" "Manustamisvahendite arv"
    * device 1..1 CD "Device coded" "Manustamisvahendi loend"
  * manufacturedItem 0..* Class "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined" "Pakkeühik, toodetud üksus."
    * manufacturedDoseForm 0..1 CD "Dose form" "Konkreetse ravimi toodetud üksuse ravimvorm, näiteks siirup, graanulid, kõvakapsel."
    * unitOfPresentation 0..1 CD "Unit of presentation for the manufactured item (tablet, vial, tube)." "Pakkeühik, näiteks tablett, ampull, viaal."
    * containedQuantity 0..1 PQ "Manufactured item quantity for liquids (3ml/vial)." "Pakkeühiku suurus."
    * amount 0..1 PQ "Number of such manufactured items in this product (5 vials)." "Pakkeühiku arv."
      * ingredient 1..* Class "Ingredients" "Koostisaine, toimeaine, aine."
        * role 1..1 BL "Role (active ingredient, excipient)." "Toimeaine tunnus ehk kas on toimeaine või mitte."
        * substance 1..1 CD "Substance" "Aine või toimeaine kood"
        * strengthInfo 1..* Class "Concentration or presentation strength" "Ravimi toimeaine sisaldus ja ühik või toimaine mahu sisaldus."
          * strength 1..1 RTO "Concentration or presentation strength of the precise active ingredient" "Ravimi toimeaine sisaldus ja ühik või toimaine mahu sisaldus."
          * strengthType 0..1 CD "Type of strength that is expressed" 
          * strengthSubstance 0..1 CD "Substance that the strength refers to, if different from the main substance"
  * packedProduct 1..1 Class "A medically related item or items of any type, in a container or package." "Ravim välimises pakendis." 
    * packSize 0..* PQ "Overall amount of product in one package." "Ravimi koguhulk."
    * productCode 0..* ST "Product code on the package of packaged product.""Tootekood. Võimaldab tuvastada ravimi nimetuse, ravimvormi, toimeaine ja selle sisalduse, ravimipakendi suuruse ja selle tüübi."
    * serialNumber 0..* ST "Serial number on the medication package." "Seerianumber. Unikaalne kood ravimi pakendil"
    * batchNumber 0..* ST "Batch number on the medication package. The assigned lot number of a batch of the specified product. " "Partiinumber, mis on ravimi pakendil."
    * expirationDate 0..* DT "When this specific batch of product will expire." "Ravimi kõlblikkuse aeg, näitab, millal konkreetne partii ravimit aegub."
* marketingAuthorization 0..1 Class "Market Authorization relating to a Medicinal Product." "Ravimi müügiluba."
  * identifier 0..1 ST "Marketing authorisation number." "Müügiloa number."
  * type 0..1 CD "Shows that this product is approved, type of regulatory entitlement." "Milline on müügiloa tüüp."
  * region 0..1 CD "Region where document is valid." "Riik, kus on kehtiv müügiluba."
  * status 0..1 CD "Wether or not the authorisation is valid." "Milline on müügiloa staatus, näiteks kehtiv."
  * holder 0..1 Class "Marketing authorisation holder." "Müügiloa asutus või organisatsioon."
    * holderIdentifier 0..1 CD "Marketing authorisation holder." "Müügiloa asutus või organisatsioon."
    * holderName 0..1 ST "Marketing authorisation holder name." "Müügiloa hoidja asutuse nimi." 
* prescription 0..* Class "Prescription" "Retsept"  
  * identifierPrescription 1..* II "An identifier for this prescription" "Retsepti identifikaator. Retsepti number."
  * status 1..1 CD "A code representing the status of prescription active, on-hold, ended, stopped, completed, cancelled, entered-in-error, draft, unknown." "Retsepti staatus."
  * lockStatus 0..* BL "When pharmacy locks the prescription for ordering unauthorized medication for patient. True - prescription is locked for certain pharmacy. False - prescription is not locked." "Broneering retseptil. Kasutatakse juhul kui on tegemist müügiloata ravimi retseptiga, mis on saanud positiivse otsuse ning ootab apteegis tellitavat ravimit."
  * reason 1..1 CD "Reason or indication for ordering the medication." "Retsepti koostamise põhjus ehk diagnoos"
  * note 0..1 ST "Extra information about the prescription that could not be conveyed by the other attributes." "Lisainformatsioon retsepti kohta"
  * courseOfTherapyType 0..* CD "Type of therapy" "Ravikuuri tüüp, näiteks  pidev, fikseeritud, vajadusel, muutuv, ühekordne "
  * prescriptionCategory 0..* CD "Category of prescription." "Retsepti liik, näiteks tavaretsept, narkootilise ravimi retsept, meditsiiniseadme retsept."
  * repeatCategory 0..* CD "Prescriptions to repeat" "Retsepti kordsus, näiteks 1-kordne, 2-kordne, 3-kordne, 6-kordne." 
  * prescribedAmount 0..1 Class "How much medication prescribed on prescription." "Väljakirjutatud ravimi kogus retseptil."
    * prescribedAmountPackage 0..1 INT "The number of medication packages." "Preparaadi pakendite kogus ja ühik, mitu pakenit välja kirjutati."
    * prescibedAmountTotal 0..1 INT "How much medication prescribed in total on prescription." "Pakendipõhise ravimi korral ühe pakendi sisalduse kirjeldus, toimeainepõhise retsepti korral määratud kogu ravimi hulk."
  * prescriptionValidityTime 0..* DT "For expressing the validity of the prescription(s)." "Retsepti kehtivuse aeg."
  * prescriptionAuthorization 0..* CD "Defines the authorization of the prescription." "Retsepti volituse liik, näiteks avalik, privaatne, volitatud."
  * cancelledPrescription 0..1 Class " Cancellation of prescription." "Retsepti annuleerimine."
    * cancelledStatusReason 0..* CD "Reason for cancellation." "Annulleerimise põhjus. Kui retsept annulleeritakse, tuleb loendist valida põhjus."
    * cancelledTime 0..* DT "Time of cancellation." "Annuleerimise aeg kuupäevaliselt."
  * substitution 0..1 Class "Whether and which type of substitution is allowed for this medication" "Ravimi asendamatus ja põhjus."
    * substitutionType 1..1 CD "The type of substitution that is allowed." "Asendamatuse tüüp."
    * substitutionTypeReason 0..1 CD "Coded reason for the substitution requirement" "Asendamatuse põhjus."
    * substitutionTypeReasonText 0..1 ST "Textual reason for the substitution requirement" "Tekstiliselt asendamatuse põhjus."
  * practitioner 1..1 Reference(PractitionerTJT) "Practitioner who is creating prescription" "Tervishoiutöötaja, kes koostas retsepti."
  * organisation 1..1 Reference "Organisation connected to practitioner and prescription." "Organisatsioon, kelle tervishoiutöötaja retsepti koostas."
  * patient 1..1 Reference(PatientTJT) "Patient" "Patsient"
  * reimbursement 1..1 Class "For representation of the reimbursement rate and reason of prescription medicine." "Retsepti soodustus ja põhjus."
    * reimbursementRate 1..1 CD "Reimbursement of medication." "Retsepti soodusmäär. Retseptikeskuse loendist Soodusmäärad, näiteks 0, 50, 75, 90, 100 protsenti."
    * reimbursementReason 1..1 ST "Reason of the reimbursement rate." "Meditsiinilised tingimused, soodustuse määra põhjus."
    * reimbursementParameters 1..1 Class "Insurance response." "Mis kindlustus on patsiendil."
      * reimbursementEu 0..1 BL "EU insurance." "Patsiendil on EU ravikindlustus."
      * reimbursementOldAgeRetirement 0..1 BL "Old age pension." "Vanaduspension."
      * reimbursementIncapacityForWork 0..1 BL "Pension for incapacity for work." "Töövõimetuspension."
      * reimbursementEstonian 0..1 BL "Estonian insurance." "Eesti ravikindlustus."
* unauthorizedMedicationRequest 0..1 Class "Requesting usage permit for unauthorized medication." "Müügiloata ravimi taotlus."
  * identifier 1..1 II "Unauthorized medication request number." "Müügiloata ravimi taotluse number."
  * requestReason 1..1 CD "Unauthorized medication reason." "Müügiloata ravimi taotluse põhjus."
  * status 0..1 CD "Status of unauthorized medication request can be positive or negative." "Müügiloata ravimi taotluse staatus."
  * requestDate 1..1 DT "Date when the request was made." "Müügiloata ravimi taotluse kuupäev."
  * requestDecision 0..1 CD "If requestStatus is negative there has to be a reason explaining the negative decision." "Müügiloata ravimi taotluse otsuse põhjus"
* dosage 0..* Class "Dosage" "Annustamise juhis"
  * sequence 0..1 INT "Order of the dosage instruction, in case one treatment consists of several dosaging schemes." "Ravimi annustamise järjekord."
  * text 0..1 ST "Free text usage/dosage instructions." "Tekstiline annustamise juhend."
  * patientInstruction 0..1 ST "Patient oriented instructions as free text." "Patsiendile mõeldud juhend. Keerulise annustamisskeemi puhul lisa juhend"
  * additionalInstruction 0..* CD "Coded instructions, e.g warnings to the patient, like 'may cause drowsiness' etc" "Hoiatus, näiteks võib teha uimaseks või kodeeritud juhend."
  * doseAndRate 0..* Class "Amount of medication administered per one dose (one timing)." "Ravimi annus ühe annustamise kohta või kõige sagedamini kasutatav annustamisjuhend."
    * type 0..1 CD "The kind of dose or rate specified e.g calculated, ordered, etc." "Annuse ja manustamise kiiruse tüüp, näiteks tellitud, kalkuleeritud."
    * dose 0..1 PQ "Amount of medication per one dose e.g 1 tablet, 1-2 tablets, 100 ml." "Ravimi kogus ühe annuse kohta."
    * rate 0..1 RTO "Amount of medication per unit of time. Time period during which one defined dose is administered e.g per 1 hour, per 5-10 minutes." "Periood, mille jooksul ühte ravimi annust ravimit annustatakse."
  * timing 0..1 Class "When medication should be administered e.g period, time of day, frequency, etc." "Annustamise aeg, võib olla periood, sagedus, aeg jne."
    * event 0..* DT "Exact date and/or time of the administration." "Täpne manustamise aeg."
    * code 0..1 CD "Timing abbreviation, e.g AM - morning." "Annustamise ajaühikute lühendid, näiteks AM - hommik, BID - kaks korda päevas."
    * repeat 0..1 Class "Repetition of the administration." "Annustamise kordused."
      * bounds 0..1 Class "Time bounds for the treatment (current dosaging scheme)." "Piirid, mis on seotud  ravimi annustamise ajalise pikkusega/pikkusvahemik või alguse ja/või lõpuga."
        * duration 0..1 PQ "Number of time units, e.g 10 days." "Ravimi annustamise kestvus, näiteks 5 päeva."
        * range 0..1 Class "A range of numbers of time units, e.g 5-10 days." "Mis aja jooksul ravimit annustatakse, näiteks 2-6 päeva."
          * rangeMinimum 0..1 PQ "Minimum number of time units." "Minimaalne ravimi annustamise ajaühik, näiteks 5 päeva"
          * rangeMaximum 0..1 PQ "Maximum number of time units." "Maximaalne ravimi annustamise ajaühik, näiteks 10 päeva."
        * period 0..1 Class "Start and end date, 12.04.2024 - 12.06.2024." "Ajavahemik (kuupäevaliselt), mille jooksul ravimit annustatakse, näiteks 12.04.2024 - 12.06.2024"
          * startDate 0..1 DT "Start date of administering medication." "Ravimi annustamise algus kuupäevaliselt."
          * endDate 0..1 DT "End time of administering medication." "Ravimi annustamise lõpp kuupäevaliselt."
      * count 0..1 Class "Number of times to repeat, exact or range." "Kordused"
        * count 1..1 INT "Number of times e.g twice, 10 times." "Mitu korda ravimit annustatakse, näiteks 2 korda, 7 korda."
        * countMax 0..1 INT "Maximum number of times e.g maximum 15 times." "Maksimaalne korduste aeg, näiteks maksimaalselt 15 korda."
      * duration 0..1 Class "Duration of one administration, exact or range." "Ravimi annustamise kestvus kas täpne või ulatus (max)."
        * duration 1..1 PQ "Duration of administration e.g 15 minutes, 2 hour." "Kui pika aja jooksul ravimit annustatakse ja ühik, näiteks 15 minuti jooksul, 2 tunni jooksul."
        * durationMax 0..1 PQ "Maximum duration of administration e.g maximum 20 minutes." "Maksimaalne ravimi annustamise kestvus ja ühik, maksimaalselt 20 minuti jooksul"
      * frequency 0..1 Class "Frequency of intake/administration e.g 4 times a day." "Korduste arvu perioodi jooksul, näiteks neli korda päevas."
        * numberOfTimes 1..1 INT "Number of times per period e.g 8 times." "Annustamiste arv perioodi jooksul, näiteks 8 korda."
        * maxNumberOfTimes 0..1 INT "Maximum number of times per period e.g. maximum 8 times." "Maksimaalne annustamise korduste arv perioodi jooksul, näiteks maksimaalselt 8 korda."
        * period 1..1 PQ "Duration to which the frequency applies e.g '... / 1 day." "Kui sagedasti annustatakse ja ühik, näiteks .../ 1 päev."
        * periodMax 0..1 PQ "Upper limit of the period e.g 4-6 hours." "Periood kahe annustamise vahel, kui tihti võib ravimit manustada, näiteks manustada iga 4-6 tunni tagant."
      * dayOfWeek 0..* CD "The day of the week of administration, e.g Mon, Tue, etc." "Annustamise nädalapäev ehk mis päevadel ravimit võtta."
      * timeOfDay 0..* DT "Time of day of administration e.g 15:00." "Kellaaeg, millal ravimit võtta, näiteks kell 15.00."
      * eventTime 0..* Class "An event the administration is bound to, e.g before meal, 30 min before meal." "Tegevusega seotud annustamine, näiteks pool tundi enne sööki."
        * when 0..* CD "Time period or event e.g before meal, morning." "Millal ravimit võtta, näiteks hommikul, õhtul, enne sööki jne."
        * offset 0..1 INT "Minutes from event, before or after." "Mis periood (numbriliselt) ja ajaühik annustamisega seotud tegevuses, näiteks 30 min enne hommikusööki."
  * asNeeded 0..1 BL "Take as needed." "Ravimi annustamine vajadusel."
  * asNeededFor 0..* CD "Take as needed for the coded reason." "Ravimi annustamine vajadusel teatud juhul."
  * bodySite 0..1 CD "Body site of administration." "Kehapiirkond, kuhu manustatakse."
  * routeOfAdministration 0..1 CD "Route of administration." "Manustamisviis, manustamistee."
  * methodOfAdministration 0..1 CD "Method or technique for administering medication." "Ravimi manustamise tehnika/meetod."
  * maxDose 0..* Class "Maximum dose for the patient" "Maksimaalsed annused ajaühikus, elu jooksul ja ühe annuse kohta."
    * maxDosePerPeriod 0..* RTO "Upper limit on medication per unit of time" "Ravimite ülempiir ajaühiku kohta. Ravimi maksimaalne annus ühes/antud perioodis."
    * maxDosePerAdministration 0..1 PQ "Upper limit on medication per one administration" "Ravimite ülempiir ühe annustamise kohta kohta. Ravimi maksimaalne annus ühe annustamise kohta."
    * maxDosePerLifetime 0..1 PQ "Upper limit on medication per lifetime of the patient" "Ravimite ülempiir patsiendi elu jooksul. Ravimi maksimaalne annus patsiendi eluaja jooksul."