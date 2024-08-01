Alias: $snomed = http://snomed.info/sct


Profile: PumpObservation
Parent: Observation
Description: "Observación para indicar bomba utilizada en el procedimiento"

Title: "PumpObvservation"

* code 1..1
* code = $snomed#44668000
* code ^definition = "PumpObvservation"

* value[x] only CodeableConcept
* code from PumpVS
* value[x].text 0..1 MS 
* value[x].text ^short = "Indicar valor cuando el concepto del valueset utilizado es other value"

