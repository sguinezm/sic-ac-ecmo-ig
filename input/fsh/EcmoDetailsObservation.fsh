Alias: $snomed = http://snomed.info/sct


Profile: EcmoDetailsObservation
Parent: Observation
Description: "Observación de detalles de ECMO"

Title: "EcmoDetailsObservation"

* code 1..1
* code = $snomed#182744004
* code ^definition = "Observación de detalles de ECMO"

* value[x] only CodeableConcept
* code from EcmoDetailsVS


