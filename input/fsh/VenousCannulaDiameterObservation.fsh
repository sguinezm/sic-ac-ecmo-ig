Alias: $snomed = http://snomed.info/sct


Profile: VenousCannulaDiameterObservation
Parent: Observation
Description: "Observación para el diámetro de la canulación venosa"

Title: "VenousCannulaDiameterObservation"

* code 1..1
* code ^definition = "Observación para el diámetro de la canulación venosa"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 2..2
* code.coding contains venousCannulation 0..1 
                    and size 0..1

* code.coding[venousCannulation].code 0..1
* code.coding[venousCannulation].system = $snomed
* code.coding[venousCannulation].code = $snomed#392231009 
* code.coding[venousCannulation] ^short = "Indica cuando la canulación es venosa"

* code.coding[size].code 0..1
* code.coding[size].system = $snomed
* code.coding[size].code = $snomed#246115007 
* code.coding[size] ^short = "Indica el tamaño de la canulación"



* value[x] only Quantity



