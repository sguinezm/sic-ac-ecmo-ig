Alias: $snomed = http://snomed.info/sct


Profile: EcmoOtherProceduresObservation
Parent: Observation
Description: "Observación de otros procedimientos durante ECMO"

Title: "EcmoOtherProceduresObservation"
 
* ^purpose = "Esta observación describe cada uno de los procedimientos durante ECMO"

* code 1..1
* code = $snomed#257556004
* code ^definition = "Observación de otros procedimientos durante ECMO"

* value[x] only CodeableConcept
* value[x] from EcmoOtherProceduresVS
* value[x].text 0..1 MS 
* value[x].text ^short = "Indicar valor cuando el concepto del valueset utilizado es other value"


