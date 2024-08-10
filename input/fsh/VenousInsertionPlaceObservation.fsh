/*
Alias: $snomed = http://snomed.info/sct


Profile: VenousInsertionPlaceObservation
Parent: Observation
Description: "Observación para la el lugar de la inserción venosa"

Title: "VenousInsertionPlaceObservation"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains VenousInsertionPlace 0..1 and 
                       insertionRoute 0..1
                      

* code.coding[VenousInsertionPlace].code 1..1
* code.coding[VenousInsertionPlace].system = $snomed
* code.coding[VenousInsertionPlace].code = $snomed#233573008 
* code.coding[VenousInsertionPlace].code ^definition = "venous insertion place"
* value[x] only code
* value[x] from VenousInsertionPlaceVS

* code.coding[insertionRoute].system = $snomed
* code.coding[insertionRoute].code = $snomed#233573008 
* code.coding[insertionRoute].code ^definition = "Venous insertion route"
* value[x] only CodeableConcept
* value[x] from VenousPeripheralInsertionRouteVS

*/






