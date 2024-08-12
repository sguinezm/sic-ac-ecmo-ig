Profile: QuestionnaireEcmoDestination
Parent: QuestionnaireResponse
Description: "Cuestionario utilizado para conocer el destino del paciente luego del procedimiento"

* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item contains ecmoDetails 0..1 and 
                destination 0..1 and 
                patientStatus 0..1 and 
                otherProcedures 0..1 and 
                otherValue 0..1

* item[ecmoDetails].linkId = "ecmo_details"
* item[ecmoDetails].answer 0..2
* item[ecmoDetails].answer.value[x] only Coding
* item[ecmoDetails].answer.value[x] from EcmoDetailsVS


* item[destination].linkId = "ecmo_destination"
* item[destination].answer 0..2
* item[destination].answer.value[x] only Coding
* item[destination].answer.value[x] from DestinationVS

* item[patientStatus].linkId = "patient_status"
* item[patientStatus].answer 0..2
* item[patientStatus].answer.value[x] only Coding
* item[patientStatus].answer.value[x] from PatientStatusAfterProcedureVS

* item[otherProcedures].linkId = "other_procedures"
* item[otherProcedures].answer 0..5
* item[otherProcedures].answer.value[x] only Coding
* item[otherProcedures].answer.value[x] from EcmoOtherProceduresVS