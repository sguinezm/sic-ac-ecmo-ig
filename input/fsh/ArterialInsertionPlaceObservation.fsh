Alias: $snomed = http://snomed.info/sct


Profile: ArterialInsertionPlaceObservation
Parent: Observation
Description: "Observación para la el lugar de la inserción arterial"

Title: "ArterialInsertionPlaceObservation"

* code 1..1
* code = $snomed#392248001
* code ^definition = "Observación para la el lugar de la inserción arterial"

* value[x] only CodeableConcept
* code from ArterialInsertionPlaceVS


