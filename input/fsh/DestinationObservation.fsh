Alias: $snomed = http://snomed.info/sct


Profile: DestinationObservation
Parent: Observation
Description: "Observación de la destinación"

Title: "DestinationObservation"

* code 1..1
* code = $snomed#182744004
* code ^definition = "Observación de detalles de la destinación"

* value[x] only CodeableConcept
* code from DestinationVS


