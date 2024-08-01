Alias: $snomed = http://snomed.info/sct

Profile: PatientStatusAfterProcedureObservation
Parent: Observation
Description: "Observación del estado del paciente luego del procedimiento"

Title: "PatientStatusAfterProcedureObservation"

* code 1..1
* code = $snomed#246097001
* code ^definition = "Se detalla la observación del estado del paciente luego del procedimiento"

* value[x] only CodeableConcept
* value[x] from PatientStatusAfterProcedureVS


