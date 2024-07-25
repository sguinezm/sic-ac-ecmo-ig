Alias: $snomed = http://snomed.info/sct


Profile: ProcedureAssistanceObservation
Parent: Observation
Description: "Observación para indicar la asistencia en el procedimiento"

Title: "ProcedureAssistance"

* code 1..1
* code = $snomed#386454002
* code ^definition = "ProcedureAssistance"

* value[x] only CodeableConcept
* code from ProcedureAssistanceVS
* value[x].text 0..1 MS 
* value[x].text ^short = "Indicar valor cuando el concepto del valueset utilizado es other value"

