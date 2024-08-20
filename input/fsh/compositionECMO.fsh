Alias: $observation-bodyheight = http://hl7.org/fhir/StructureDefinition/bodyheight
Alias: $observation-bodyweight = http://hl7.org/fhir/StructureDefinition/bodyweight
Profile: CompositionECMO
Parent: Composition

Title: "Composition ECMO"
Description: "Recurso que contiene las referencias identificadas por secciones a los recursos necesarios para representar la información de ECMO."

* status = #final
* type = #67727-8
* type.coding.system = $snomed
* author only Reference(PractitionerECMO)
* date ^short = "fecha en la que se inicia e registro de la intervención"
* author ^short = "Profesional encargado de registrar la intervención"
* title  = "Composition Cardiocirugia" 
* section 1..10 MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Secciones del documento."
* section ^definition = "Sección del documento que contiene los datos asociados a la atención clínica."
* section.code 1..1 MS
//* section.code from ECMOCompositionSectionCodesVS (required)
* section contains
    PatientSection 0..1 MS 

* section[PatientSection] ^short = "Sección del paciente"
* section[PatientSection] ^definition = "Información acerca del paciente"
* section[PatientSection].code = #1
* section[PatientSection] 1..1
* section[PatientSection].focus only Reference(PatientECMO)

* section[PatientSection].entry ^slicing.discriminator.type = #profile
* section[PatientSection].entry ^slicing.discriminator.path = "resolve()"
* section[PatientSection].entry ^slicing.rules = #open
* section[PatientSection].entry 3..*
* section[PatientSection].entry contains 
                                        bodyheightObservation 1..1 and
                                        bodyweightObservation 1..1 and
                                        bloodTypeObservation 0..1 and 
                                        emergencyContact 0..*

* section[PatientSection].entry[bodyheightObservation] only Reference($observation-bodyheight)
* section[PatientSection].entry[bodyheightObservation] ^short = "Referencia  al recurso que contiene la observación de altura del paciente"
* section[PatientSection].entry[bodyweightObservation] only Reference($observation-bodyweight)
* section[PatientSection].entry[bodyweightObservation] ^short = "Referencia  al recurso que contiene la observación sobre el peso del paciente"
* section[PatientSection].entry[bloodTypeObservation] only Reference(BloodTypeObservation)
* section[PatientSection].entry[bloodTypeObservation] ^short = "Referencia  al recurso que contiene la observación que hace referencia al tipo de sangre del paciente"
* section[PatientSection].entry[emergencyContact] only Reference(RelatedPerson)
* section[PatientSection].entry[emergencyContact] ^short = "Se referencia a las personas que pueden ser contactadas al momento de una emergencia"
