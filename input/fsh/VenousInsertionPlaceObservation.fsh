Profile: VenousInsertionPlaceObservation
Parent: Observation
Description: "Observación para el lugar de la inserción venosa"

Title: "VenousInsertionPlaceObservation"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains central 0..1 
                    and peripheral 0..1

* code.coding[central].code 0..1
* code.coding[central].system = $snomed
* code.coding[central].code = $snomed#233527006 
* code.coding[central] ^short = "Indica cuando la canulación fue en el lugar central"

* code.coding[peripheral].code 0..1
* code.coding[peripheral].system = $snomed
* code.coding[peripheral].code = $snomed#233520008 
* code.coding[peripheral] ^short = "Indica cuando la canulación fue en el lugar periférico"



* value[x] from VenousPeripheralInsertionRouteVS
* value[x] only CodeableConcept


