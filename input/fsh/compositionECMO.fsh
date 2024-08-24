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
    PatientSection 0..1 MS and 
    ECMOProcedure 0..1 

* section[PatientSection] ^short = "Sección con datos relacionados directamente con el paciente."
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


* section[ECMOProcedure] ^short = "Sección con datos relacionados directamente con el procedimiento."
* section[ECMOProcedure] ^definition = "Información acerca del procedimiento"
* section[ECMOProcedure].code = #2
* section[ECMOProcedure] 1..1
* section[ECMOProcedure].focus only Reference(ECMOProcedure)

* section[ECMOProcedure].entry ^slicing.discriminator.type = #profile
* section[ECMOProcedure].entry ^slicing.discriminator.path = "resolve()"
* section[ECMOProcedure].entry ^slicing.rules = #open
* section[ECMOProcedure].entry 0..*
* section[ECMOProcedure].entry contains 
                                        ProcedureAssistance 0..1 and 
                                        PumpObservation 0..1 and 
                                        ArterialCannulaDiameterObservation 0..1 and 
                                        ArterialInsertionPlaceObservation 0..1 and 
                                        VenousInsertionPlaceObservation 0..1 and
                                        VenousCannulaDiameterObservation 0..1 and
                                        CannulationObservation 0..1 and 
                                        DestinationObservation 0..1 and 
                                        EcmoDetailsObservation 0..1 


* section[ECMOProcedure].entry[ProcedureAssistance] only Reference(ProcedureAssistanceObservation)
* section[ECMOProcedure].entry[ProcedureAssistance] ^short = "Se hace referencia al procedimiento de asistencia"

* section[ECMOProcedure].entry[PumpObservation] only Reference(PumpObservation)
* section[ECMOProcedure].entry[PumpObservation] ^short = "Se hace referencia a la bomba utilizada en el procedimiento"

* section[ECMOProcedure].entry[CannulationObservation] only Reference(CannulationObservation)
* section[ECMOProcedure].entry[CannulationObservation] ^short = "Se hace referencia a la observación de la cánula"

* section[ECMOProcedure].entry[VenousInsertionPlaceObservation] only Reference(VenousInsertionPlaceObservation)
* section[ECMOProcedure].entry[VenousInsertionPlaceObservation] ^short = "Se hace referencia a la observación del lugar de insercion venosa"

* section[ECMOProcedure].entry[VenousCannulaDiameterObservation] only Reference(VenousCannulaDiameterObservation)
* section[ECMOProcedure].entry[VenousCannulaDiameterObservation] ^short = "Se hace referencia a la observación del diámetro de la cánula venosa"

* section[ECMOProcedure].entry[ArterialInsertionPlaceObservation] only Reference(ArterialInsertionPlaceObservation)
* section[ECMOProcedure].entry[ArterialInsertionPlaceObservation] ^short = "Se hace referencia a la observación del lugar de insercion arterial"

* section[ECMOProcedure].entry[ArterialCannulaDiameterObservation] only Reference(ArterialCannulaDiameterObservation)
* section[ECMOProcedure].entry[ArterialCannulaDiameterObservation] ^short = "Se hace referencia a la observación del diámetro de la cánula arterial"