Alias: $snomed = http://snomed.info/sct


Profile: ArterialPeripheralInsertionRouteObservation
Parent: Observation
Description: "Observación para la el lugar de la inserción venosa arterial"

Title: "ArterialPeripheralInsertionRouteObservation"

* code 1..1
* code = $snomed#392230005
* code ^definition = "Observación para la el lugar de la inserción arterial"

* value[x] only CodeableConcept
* value[x] from ArterialPeripheralInsertionRouteVS


