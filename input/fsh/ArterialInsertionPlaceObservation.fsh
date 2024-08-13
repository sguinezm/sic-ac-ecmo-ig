Alias: $snomed = http://snomed.info/sct


Profile: ArterialInsertionPlaceObservation
Parent: Observation
Description: "ArterialInsertionPlaceObservation"

Title: "ArterialInsertionPlaceObservation"

* code 1..1
* code ^definition = "Observación para el lugar de la inserción arterial"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..2
* code.coding contains arterialCannulation 1..1 and central 0..1 and 
                       peripheral 0..1


* code.coding[arterialCannulation].code 1..1
* code.coding[arterialCannulation].system = $snomed
* code.coding[arterialCannulation].code = $snomed#392248001 
* code.coding[arterialCannulation].code ^short = "Indica cuando es un procedimiento de canulación arterial"

* code.coding[central].code 0..1
* code.coding[central].system = $snomed
* code.coding[central].code = $snomed#26216008 
* code.coding[central].code ^short = "Indica cuando la canulación fue en el lugar central"

* code.coding[peripheral].code 0..1
* code.coding[peripheral].system = $snomed
* code.coding[peripheral].code = $snomed#14414005 
* code.coding[peripheral].code ^short = "Indica cuando la canulación fue en el lugar periférico"


* value[x] only CodeableConcept
* value[x] from ArterialInsertionPlaceVS


