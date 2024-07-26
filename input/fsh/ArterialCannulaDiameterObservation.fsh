Alias: $snomed = http://snomed.info/sct


Profile: ArterialCannulaDiameterObservation
Parent: Observation
Description: "Observación del diámetro arterial"

Title: "ArterialCannulaDiameterObservation"

* code 1..1
* code = $snomed#81827009
* code ^definition = "Observación para el diámetro de la vena artierial"

* value[x] only Quantity


