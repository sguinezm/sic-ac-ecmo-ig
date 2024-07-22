

Profile: DiabetesCondition
Parent: Condition
Description: "Se indica si el paciente presenta diabetes"

Title: "DiabetesCondition"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 2..3
* code.coding contains diabetes 1..1 and
                        none 0..1 and
                        treatment 0..1

* code.coding[diabetes].code 1..1
* code.coding[diabetes].code = $snomed#73211009
* code.coding[diabetes].code ^definition = "Diabetes mellitus (disorder)"
* code.coding[none].code 0..1
* code.coding[none].code = $snomed#260413007
* code.coding[none].code ^definition = "None (qualifier value)"
* code.coding[treatment].code 1..1
* code.coding[treatment].code only code
* code.coding[treatment].code from DiabetesConditionVS
* code.coding[treatment].code ^definition = "Tratamiento seguido para tratar la diabetes"


Profile: HypertensionCondition
Parent: Condition
Description: "Se indica paciente presenta hipertensión"

Title: "HypertensionCondition"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..2
* code.coding contains hypertension 1..1 and
                        absence 0..1 and
                        unknown 0..1

* code.coding[hypertension].code 1..1
* code.coding[hypertension].code = $snomed#38341003
* code.coding[hypertension].code ^definition = "Hypertensive disorder, systemic arterial (disorder)"
* code.coding[absence].code 0..1
* code.coding[absence].code = $snomed#272519000
* code.coding[absence].code ^definition = "Absence findings (qualifier value) "
* code.coding[unknown].code 0..1
* code.coding[unknown].code = $snomed#261665006
* code.coding[unknown].code ^definition = "Unknown (qualifier value)"

Profile: HypercholesterolemiaCondition
Parent: Condition
Description: "Se indica si el paciente presenta hipercolesterolemia"

Title: "HypercholesterolemiaCondition"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..2
* code.coding contains hypercholestorolemia 1..1 and
                        absence 0..1
                        
* code.coding[hypercholestorolemia].code 1..1
* code.coding[hypercholestorolemia].code = $loinc#13644009
* code.coding[hypercholestorolemia].code ^definition = "Hipercolesterolemia"
* code.coding[absence].code 0..1
* code.coding[absence].code = $loinc#272519000
* code.coding[absence].code ^definition = "Absence findings (qualifier value) "


Profile: CarotidBruitCondition
Parent: Condition
Description: "Se indica si el paciente presenta soplos cardíacos"

Title: "CarotidBruitCondition"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..2
* code.coding contains CarotidBruit 1..1 and
                        absence 0..1

* code.coding[CarotidBruit].code 1..1
* code.coding[CarotidBruit].code = $loinc#419642000
* code.coding[CarotidBruit].code ^definition = "Carotid bruit (finding)"
* code.coding[absence].code 0..1
* code.coding[absence].code = $loinc#700428007
* code.coding[absence].code ^definition = "Carotid bruit absent (situation)"

Profile: ChronicLungDiseaseCondition
Parent: Condition
Description: "Se indica las enfermedades pulmonares crónicas del paciente"

Title: "ChronicLungDiseaseCondition"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 2..3
* code.coding contains ChronicLungDisease 1..1 and
                        absence 0..1 and
                        type 0..1

* code.coding[ChronicLungDisease].code 1..1
* code.coding[ChronicLungDisease].code = $loinc#413839001
* code.coding[ChronicLungDisease].code ^definition = "Carotid bruit (finding)"
* code.coding[absence].code 0..1
* code.coding[absence].code = $loinc#272519000
* code.coding[absence].code ^definition = "Absence findings (qualifier value) "
* code.coding[type].code only code
* code.coding[type].code from CLDConditionVS
* code.coding[type].code ^definition = "Tipo de enfermedad pulmonar crónica "


Profile: ExtraCardiacArteriopathyCondition
Parent: Condition
Description: "Se indica la condición de ateriopatía extracardíaca"

Title: "ExtraCardiacArteriopathyCondition"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 4..4
* code.coding contains arteriopathy 1..1 and
                        extra 1..1 and
                        cardiac 1..1 and
                        absence 0..1 and
                        type 0..1

* code.coding[arteriopathy].code 1..1
* code.coding[arteriopathy].code = $loinc#39823006
* code.coding[arteriopathy].code ^definition = "Generalized atherosclerosis (disorder)"
* code.coding[extra].code 1..1
* code.coding[extra].code = $loinc#272437001
* code.coding[extra].code ^definition = "Extra-location (qualifier value)"
* code.coding[cardiac].code 1..1
* code.coding[cardiac].code = $loinc#80891009
* code.coding[cardiac].code ^definition = "Heart structure (body structure)"
* code.coding[absence].code 0..1
* code.coding[absence].code = $loinc#272519000
* code.coding[absence].code ^definition = "Absence findings (qualifier value) "
* code.coding[type].code only code
* code.coding[type].code from ExtracardiacArteriopathyVS
* code.coding[type].code ^definition = "Tipo de arteriopatía extracardíaca"


Profile: NephropathyCondition
Parent: Condition
Description: "Se indica si el paciente posee alguna nefropatía"

Title: "NephropathyCondition"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 2..5
* code.coding contains nephropathy 1..1 and
                    type 1..4

* code.coding[nephropathy].code 1..1
* code.coding[nephropathy].code = $loinc#90708001
* code.coding[nephropathy].code ^definition = " Kidney disease (disorder)"
* code.coding[type].code only code
* code.coding[type].code from NephropathyConditionVS
* code.coding[type].code ^definition = "Tipo de nefropatía extracardíaca"


Profile: TypeOfDiseaseCondition
Parent: Condition
Description: "Se indica si el paciente posee alguna nefropatía"

Title: "TypeOfDiseaseCondition"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 2..5
* code.coding contains disease 1..1 and
                    type 1..5
* code.coding[disease].code 1..1
* code.coding[disease].code = $loinc#62914000
* code.coding[disease].code ^definition = "Enfermedad cerebrovascular (trastorno)"
* code.coding[type].code only code
* code.coding[type].code from TypeOfDiseaseConditionVS
* code.coding[type].code ^definition = "Enfermedad cerebrovascular"