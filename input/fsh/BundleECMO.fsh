Alias: $observation-bodyheight = http://hl7.org/fhir/StructureDefinition/bodyheight
Alias: $observation-bodyweight = http://hl7.org/fhir/StructureDefinition/bodyweight
Profile: BundleECMO
Parent: Bundle
Id: BundleECMO
Title: "Bundle ECMO"
Description: "Recurso que permite compartir la información del procedimiento"

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id MS
* id ^short = "Id propio del recurso"
* type MS
* type ^short = "Indica de qué tipo de bundle es."
* type = #document
* timestamp MS
* timestamp ^short = "Cuando el Bundle fue construido"

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry 8..8 MS
* entry ^short = "Entrada en el Bundle: contendrá un recurso o información"
* entry contains compositionECMO 1..1 and 
                 paciente 1..1    and 
                 tipoSangre 1..1 and
                 altura 0..1 and 
                 peso 0..1 and 
                 asistenciaProcedimiento 0..1 and 
                 bomba 0..1 and
                 canula 0..1 and 
                 lugarDeInsercionVenosa 0..1 and 
                 diametroCanulaVenosa 0..1 and 
                 lugarDeInsercionArterial 0..1 and 
                 diametroCanulaArterial 0..1






              
* entry[compositionECMO] ^short = "Entrada en el Bundle: contendrá un recurso cardioComposition"
* entry[compositionECMO].resource only CompositionECMO
* entry[compositionECMO].resource ^short = "Descripcion DETALLADA , PRIMER RECURSO COMPOSITION"

* entry[paciente] ^short = "Paciente"
* entry[paciente].resource only PatientECMO
* entry[paciente].resource ^short = "Descripcion del Paciente"


* entry[tipoSangre] ^short = "Observación de tipo de sangre"
* entry[tipoSangre].resource only BloodTypeObservation
* entry[tipoSangre].resource ^short = "Se detalla el tipo de sangre del paciente"

* entry[altura] ^short = "Altura de la persona"
* entry[altura].resource only observation-bodyheight
* entry[altura].resource ^short = "Se indica la altura de la persona"


* entry[peso] ^short = "Peso de la persona"
* entry[peso].resource only observation-bodyweight
* entry[peso].resource ^short = "Se indica el peso de la persona"

* entry[asistenciaProcedimiento] ^short = "Asistencia de procedimiento"
* entry[asistenciaProcedimiento].resource only ProcedureAssistanceObservation
* entry[asistenciaProcedimiento].resource ^short = "Se indica la asistencia de procedimiento"

* entry[bomba] ^short = "Detalles de la bomba durante ECMO"
* entry[bomba].resource only PumpObservation
* entry[bomba].resource ^short = "Se indican detalles de la bomba durante el procedimiento"

* entry[canula] ^short = "Detalles de la canula"
* entry[canula].resource only CannulationObservation
* entry[canula].resource ^short = "Se indican detalles de la canula"

* entry[lugarDeInsercionVenosa] ^short = "Lugar de inserción venosa"
* entry[lugarDeInsercionVenosa].resource only VenousInsertionPlaceObservation
* entry[lugarDeInsercionVenosa].resource ^short = "Se indican detalles del lugar donde se produjo la inserción venosa"

* entry[diametroCanulaVenosa] ^short = "Diámetro de canula venosa"
* entry[diametroCanulaVenosa].resource only VenousCannulaDiameterObservation
* entry[diametroCanulaVenosa].resource ^short = "Se indican detalles del diámetro de la canula venosa"

* entry[lugarDeInsercionArterial] ^short = "Lugar de inserción arterial"
* entry[lugarDeInsercionArterial].resource only ArterialInsertionPlaceObservation
* entry[lugarDeInsercionArterial].resource ^short = "Se indican detalles del lugar donde se produjo la inserción artierial"

* entry[diametroCanulaArterial] ^short = "Diámetro de canula arterial"
* entry[diametroCanulaArterial].resource only ArterialInsertionPlaceObservation
* entry[diametroCanulaArterial].resource ^short = "Se indican detalles del diámetro de la canula venosa"