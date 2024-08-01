Alias: $snomed = http://snomed.info/sct


Profile: VenousInsertionPlaceObservation
Parent: Observation
Description: "Observación para la el lugar de la inserción venosa"

Title: "VenousInsertionPlaceObservation"

* code 1..1
* code = $snomed#392230005
* code ^definition = "Observación para la el lugar de la inserción venosa"

* value[x] only CodeableConcept
* value[x] from VenousInsertionPlaceVS


