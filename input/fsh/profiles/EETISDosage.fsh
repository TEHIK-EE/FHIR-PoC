Profile: EETISDosage
Parent: Dosage
Id: ee-tis-dosage
Description: "Annustamisjuhis. Dosage is for exact representation of what quantity in which units and how often should medication be taken by patient."
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-01-31T13:55:03.1985103+00:00"
* . ^short = "Annustamisjuhis"
* sequence ^short = "JÄRJEKORD. The order of the dosage instructions"
* text ^maxLength = 1000
* additionalInstruction ^short = "LISAJUHIS. Supplemental instruction or warnings to the patient - e.g. \"with meals\", \"may cause drowsiness\""
* patientInstruction ^short = "KOMMENTAAR PATSIENDILE. Patient or consumer oriented instructions"
* timing ^short = "ANNUSTAMISE AEG. When medication should be administered"
* timing.repeat ^short = "ANNUSTAMISE KORDUS. When the event is to occur"
* timing.repeat.bounds[x] ^slicing.discriminator.type = #type
* timing.repeat.bounds[x] ^slicing.discriminator.path = "$this"
* timing.repeat.bounds[x] ^slicing.rules = #open
* timing.repeat.bounds[x] ^short = "Ravikuuri piirid (pikkus/ulatus/kestus)"
* timing.repeat.bounds[x] ^definition = "Length/Range of lengths, or (Start and/or end) limits. Either a duration for the length of the timing schedule, a range of possible length, or outer bounds for start and/or end limits of the timing schedule."
* timing.repeat.count ^short = "KORDUSED. Number of times to repeat"
* timing.repeat.countMax ^short = "MAKSIMAALNE KORDUSTE ARV. Maximum number of times to repeat"
* timing.repeat.countMax ^definition = "MAKSIMAALNE KORDUSTE ARV. If present, indicates that the count is a range - so to perform the action between [count] and [countMax] times."
* timing.repeat.duration ^short = "KESTUS. How long when it happens"
* timing.repeat.duration ^definition = "KESTUS. How long this thing happens for when it happens. If durationMax is present, this element indicates the lower bound of the allowed range of the duration."
* timing.repeat.durationMax ^short = "MAKSIMAALNE KESTUS. How long when it happens (Max)"
* timing.repeat.durationMax ^definition = "MAKSIMAALNE KESTUS. If present, indicates that the duration is a range - so to perform the action between [duration] and [durationMax] time length."
* timing.repeat.durationUnit ^definition = "KESTUS ja ÜHIK. The units of time for the duration, in UCUM units\nNormal practice is to use the 'mo' code as a calendar month when calculating the next occurrence."
* timing.repeat.frequency ^short = "SAGEDUS. Indicates the number of repetitions that should occur within a period. I.e. Event occurs frequency times per period"
* timing.repeat.frequency ^definition = "SAGEDUS. Ühekordse annuse kordsus/annustamiste arv perioodis. The number of times to repeat the action within the specified period. If frequencyMax is present, this element indicates the lower bound of the allowed range of the frequency."
* timing.repeat.frequencyMax ^short = "MAKSIMAALNE ANNUSTAMISTE ARV. Event occurs up to frequencyMax times per period"
* timing.repeat.frequencyMax ^definition = "MAKSIMAALNE ANNUSTAMISTE ARV. If present, indicates that the frequency is a range - so to repeat between [frequency] and [frequencyMax] times within the period or period range."
* timing.repeat.period ^short = "KUI SAGEDASTI ANNUSTATAKSE JA ÜHIK. The duration to which the frequency applies. I.e. Event occurs frequency times per period"
* timing.repeat.period ^definition = "KUI SAGEDASTI ANNUSTATAKSE JA ÜHIK. Indicates the duration of time over which repetitions are to occur; e.g. to express \"3 times per day\", 3 would be the frequency and \"1 day\" would be the period. If periodMax is present, this element indicates the lower bound of the allowed range of the period length."
* timing.repeat.periodMax ^short = "MAKSIMAALNE PERIOOD ANNUSTAMISE VAHEL. Upper limit of period (3-4 hours)"
* timing.repeat.periodMax ^definition = "MAKSIMAALNE PERIOOD ANNUSTAMISE VAHEL. If present, indicates that the period is a range from [period] to [periodMax], allowing expressing concepts such as \"do this once every 3-5 days."
* timing.repeat.dayOfWeek ^definition = "NÄDALAPÄEV. If one or more days of week is provided, then the action happens only on the specified day(s)."
* timing.repeat.timeOfDay ^definition = "PÄEVA OSA. Specified time of day for action to take place."
* timing.repeat.when ^short = "MILLEGA SEOTUD. Code for time period of occurrence"
* timing.repeat.offset ^short = "PERIOOD ENNE VÕI PÄRAST. Minutes from event (before or after)"
* asNeeded ^short = "VAJADUSEL. Take \"as needed\""
* asNeededFor ..1
* site ^short = "KEHAPIIRKOND. Body site to administer to"
* route ^short = "MANUSTAMISVIIS. How drug should enter body"
* method ^short = "MEETOD. Technique for administering medication"
* doseAndRate ^short = "ANNUS JA KIIRUS. Amount of medication administered, to be administered or typical amount to be administered"
* doseAndRate.dose[x] from $retsept-annustamise-yhik-VS (example)
* doseAndRate.dose[x] ^short = "RAVIMI KOGUS ANNUSE KOHTA. Amount of medication per dose"
* doseAndRate.dose[x] ^definition = "RAVIMI KOGUS ANNUSE KOHTA. Loendis on koodid nagu näiteks TA -tablett, TK - tükk, CP- kapsel, MA - mõõtannus jne. Amount of medication per dose."
* doseAndRate.dose[x] ^binding.description = "Annustamise ühikud loend"
* doseAndRate.rate[x] ^short = "MANUSTAMISE KIIRUS. Amount of medication per unit of time"
* doseAndRate.rate[x] ^definition = "MANUSTAMISE KIIRUS. Amount of medication per unit of time."
* maxDosePerPeriod ^short = "MAKSIMAALNE ANNUS PERIOODIS. Upper limit on medication per unit of time"
* maxDosePerPeriod ^definition = "MAKSIMAALNE ANNUS PERIOODIS. Upper limit on medication per unit of time."
* maxDosePerAdministration ^short = "MAKSIMAALNE ANNUS ÜHE ANNUSTAMISE KOHTA. Upper limit on medication per administration"
* maxDosePerAdministration ^definition = "MAKSIMAALNE ANNUS ÜHE ANNUSTAMISE KOHTA. Upper limit on medication per administration."
* maxDosePerLifetime ^short = "MAKSIMAALNE ANNUS ELUS. Upper limit on medication per lifetime of the patient"
* maxDosePerLifetime ^definition = "MAKSIMAALNE ANNUS ELUS. Upper limit on medication per lifetime of the patient."