Alias: $snomed = http://snomed.info/sct


Profile: ArterialCannulaDiameterObservation
Parent: Observation
Description: "Observación del diámetro arterial"

Title: "ArterialCannulaDiameterObservation"

* code 1..1
* code ^definition = "Observación para el diámetro de la vena artierial"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 2..2
* code.coding contains arterialCannulation 0..1 
                    and size 0..1

* code.coding[arterialCannulation].code 0..1
* code.coding[arterialCannulation].system = $snomed
* code.coding[arterialCannulation].code = $snomed#392248001 
* code.coding[arterialCannulation] ^short = "Indica cuando la canulación es arterial"

* code.coding[size].code 0..1
* code.coding[size].system = $snomed
* code.coding[size].code = $snomed#246115007 
* code.coding[size] ^short = "Indica el tamaño de la canulación"


* value[x] only Quantity


