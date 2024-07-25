Alias: $snomed = http://snomed.info/sct


Profile: ProcedureAssistanceObservation
Parent: Observation
Description: "Observación para indicar la asistencia en el procedimiento"

Title: "ProcedureAssistance"

* code 1..1
* code = $snomed#386454002
* code ^definition = "ProcedureAssistance"
* code from ProcedureAssistanceVS
* value[x] 1..1