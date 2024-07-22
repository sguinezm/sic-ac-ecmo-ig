Alias: $snomed = http://snomed.info/sct

Profile: ProcedureCardio
Parent: Procedure
Description: "Registro de la cardiocirugía"


* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "actor"
* performer ^slicing.rules = #open
* performer 1..5
* performer contains surgeon1 1..3 and
                anesthetist 1..1 and
                perfusionist 1..1


* performer[surgeon1].actor 1..1
* performer[surgeon1].actor only Reference(PractitionerCardio)
* performer[surgeon1].actor ^definition = "Definición del médico que actúa como cirujano"

* performer[anesthetist].actor 1..1
* performer[anesthetist].actor only Reference(PractitionerCardio)
* performer[anesthetist].actor ^definition = "Definición del médico que actúa como anestesista"

* performer[perfusionist].actor 1..1
* performer[perfusionist].actor only Reference(PractitionerCardio)
* performer[perfusionist].actor ^definition = "Definición del médico que actúa como perfusionista"

* performed[x] only dateTime

* bodySite ^slicing.discriminator.type = #value
* bodySite ^slicing.discriminator.path = "code"
* bodySite ^slicing.rules = #open
* bodySite 1..5
* bodySite contains procedure 1..1 and
        valve 1..4

* bodySite[procedure].coding.code = #64915003
* bodySite[procedure].coding.system = $snomed

* bodySite[valve] only CodeableConcept
* bodySite[valve] from ValvesVS
* code 1..1
* code from ProcedureTypeVS 
* code.coding 1..6
* extension contains UrgencyLevelCardioCx named urgency_level 1..1 and 
        UrgencyOfSurgeryExt named urgency_operation 1..1 and MainReasonSurgeryExt named main_reason_surgery 1..1