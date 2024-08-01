Alias: $snomed = http://snomed.info/sct


Profile: CannulationObservation
Parent: Observation
Description: "Observación para la canulación"

Title: "CannulationObservation"

* code 1..1
* code = $snomed#42825003
* code ^definition = "Observación para la canulación"

* value[x] only CodeableConcept
* value[x] from CannulationVS


