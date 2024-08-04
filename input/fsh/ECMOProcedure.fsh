Alias: $snomed = http://snomed.info/sct

Profile: ECMOProcedure
Parent: Procedure
Description: "Registro del procedimiento de ECMO"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 0..3
* code.coding contains tipo_soporte 0..1

* code.coding[tipo_soporte].system = $snomed
* code.coding[tipo_soporte].code = $snomed#40701008
* code.coding[tipo_soporte].display = "ECMO assistance"
* outcome from TypeOfSupportVS (required)


* reasonCode ^slicing.discriminator.type = #value
* reasonCode ^slicing.discriminator.path = "coding.code"
* reasonCode ^slicing.rules = #open
* reasonCode 1..3
* reasonCode contains fallo_respiratorio 0..1 and 
                       fallo_cardiaco 0..1 and 
                       PCR 0..1

* reasonCode[fallo_respiratorio].coding.system = $snomed
* reasonCode[fallo_respiratorio].coding.code = $snomed#409622000
* reasonCode[fallo_respiratorio].coding.display = "Fallo respiratorio"

* reasonCode[fallo_cardiaco].coding.system = $snomed
* reasonCode[fallo_cardiaco].coding.code = $snomed#84114007
* reasonCode[fallo_cardiaco].coding.display = "Fallo cardíaco"

* reasonCode[PCR].coding.system = $snomed
* reasonCode[PCR].coding.code = $snomed#702675006
* reasonCode[PCR].coding.display = "PCR"

* performed[x] only dateTime




                       





* extension contains RescueEcmoExt named rescue_ecmo 1..1 and
DistalReperfusionExt named distal_reperfusion 1..1 and 
 PerfusionPlaceExt named perfusion_place 1..1  and 
 EcmoDaysExt named ecmo_days 1..1