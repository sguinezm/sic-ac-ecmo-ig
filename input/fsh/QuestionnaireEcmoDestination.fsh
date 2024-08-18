Profile: QuestionnaireEcmoDestination
Parent: QuestionnaireResponse
Description: "Cuestionario utilizado para conocer el destino del paciente luego del procedimiento"

* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item contains ecmoDetails 0..1 and 
                destination 0..1 and 
                patientStatus 0..1 and 
                otherProcedures 0..1 

* item[ecmoDetails].linkId = "ecmo_details"
* item[ecmoDetails].answer 0..1
* item[ecmoDetails].answer.value[x] only Coding
* item[ecmoDetails].answer.value[x] from EcmoDetailsVS


* item[destination].linkId = "ecmo_destination"
* item[destination].answer 0..1
* item[destination].answer.value[x] only Coding
* item[destination].answer.value[x] from DestinationVS

* item[patientStatus].linkId = "patient_status"
* item[patientStatus].answer 0..1
* item[patientStatus].answer.value[x] only Coding
* item[patientStatus].answer.value[x] from PatientStatusAfterProcedureVS

* item[otherProcedures].linkId = "other_procedures"
* item[otherProcedures].answer 0..6
* item[otherProcedures].answer ^slicing.discriminator.type = #type
* item[otherProcedures].answer ^slicing.discriminator.path = "$this"
* item[otherProcedures].answer ^slicing.rules = #open
* item[otherProcedures].answer contains cod 0..5 MS and otherValue 0..1 MS

* item[otherProcedures].answer[cod].value[x] only Coding
* item[otherProcedures].answer[cod].value[x] 1..1 MS
* item[otherProcedures].answer[cod].value[x] ^short = "Selección de valores para indicar otros procedimientos" 
* item[otherProcedures].answer[cod].value[x] from EcmoOtherProceduresVS

* item[otherProcedures].answer[otherValue].value[x] only string
* item[otherProcedures].answer[otherValue].value[x] 1..1
* item[otherProcedures].answer[otherValue].value[x] ^short = "Cuando se selecciona otro valor, ingresar el valor aquí." 