Alias: $snomed = http://snomed.info/sct


Profile: VenousPeripheralInsertionRouteObservation
Parent: Observation
Description: "Observación para la el lugar de la inserción venosa periférica"

Title: "VenousPeripheralInsertionRouteObservation"

* code 1..1
* code = $snomed#392230005
* code ^definition = "Observación para la el lugar de la inserción venosa periférica"

* value[x] only CodeableConcept
* code from VenousPeripheralInsertionRouteVS


