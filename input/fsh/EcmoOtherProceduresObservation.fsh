Alias: $snomed = http://snomed.info/sct


Profile: EcmoOtherProceduresObservation
Parent: Observation
Description: "Observación de otros procedimientos durante ECMO"

Title: "EcmoOtherProceduresObservation"

* code 1..1
* code = $snomed#257556004
* code ^definition = "Observación de otros procedimientos durante ECMO"

* value[x] only CodeableConcept
* code from EcmoOtherProceduresVS


