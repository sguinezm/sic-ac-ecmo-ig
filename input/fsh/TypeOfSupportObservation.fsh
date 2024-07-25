Alias: $snomed = http://snomed.info/sct


Profile: TypeOfSupportObservation
Parent: Observation
Description: "Observación para indicar el tipo de soporte durante el procedimiento"

Title: "TypeOfSupportObservation"

* code 1..1
* code = $snomed#232969009
* code ^definition = "Observación para indicar el tipo de soporte durante el procedimiento"

* value[x] only CodeableConcept
* code from TypeOfSupportVS


