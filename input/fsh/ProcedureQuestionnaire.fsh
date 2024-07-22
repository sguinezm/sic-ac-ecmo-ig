Profile: ProcedureQuestionnaire
Parent: QuestionnaireResponse
Description: "Cuestionario utilizado para conocer las intervenciones clinicas previas del paciente, relevantes para el procedimiento de cardio cirugía."

* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item 1..8
* item contains previousAngioplasty 1..1 and
        numberOfPreviousCardiacSurgeries 1..1 and
        dateOfLastAngioplasty 1..1 and
        dateOfLastCardiacSurgery 1..1 and
        previousSurgeries 1..1 and
        heartCatheterization 1..1 and
        otherCardiacProcedures 1..1  and 
        otherNonCardiacProcedures 1..1 

* item[previousAngioplasty].linkId = "previous_angioplasty"
* item[previousAngioplasty].answer 1..1
* item[previousAngioplasty].answer.value[x] only Coding
* item[previousAngioplasty].answer.value[x] from PreviousAngioplastyVS

* item[numberOfPreviousCardiacSurgeries].linkId = "number_of_previous_cardiac_surgeries"
* item[numberOfPreviousCardiacSurgeries].answer 1..1
* item[numberOfPreviousCardiacSurgeries].answer.value[x] only Coding
* item[numberOfPreviousCardiacSurgeries].answer.value[x] from NumberOfPreviousCardiacSurgeriesVS

* item[dateOfLastAngioplasty].linkId = "date_of_last_angioplasty"
* item[dateOfLastAngioplasty].answer 1..1
* item[dateOfLastAngioplasty].answer.value[x] only date

* item[dateOfLastCardiacSurgery].linkId = "date_of_last_cardiac_surgery"
* item[dateOfLastCardiacSurgery].answer 1..1
* item[dateOfLastCardiacSurgery].answer.value[x] only date

* item[previousSurgeries].linkId = "previous_surgeries"
* item[previousSurgeries].answer 1..3
* item[previousSurgeries].answer.value[x] only Coding
* item[previousSurgeries].answer.value[x] from PreviousSurgeriesVS  

* item[heartCatheterization].linkId = "heart_catheterization"
* item[heartCatheterization].answer 1..1
* item[heartCatheterization].answer.value[x] only Coding
* item[heartCatheterization].answer.value[x] from HeartCatheterizationVS  

* item[otherCardiacProcedures].linkId = "other_cardiac_procedures"
* item[otherCardiacProcedures].answer 1..1
* item[otherCardiacProcedures].answer.value[x] only boolean

* item[otherNonCardiacProcedures].linkId = "other_non_cardiac_procedures"
* item[otherNonCardiacProcedures].answer 1..1
* item[otherNonCardiacProcedures].answer.value[x] only boolean

