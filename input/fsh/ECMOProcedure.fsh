Alias: $snomed = http://snomed.info/sct

Profile: ECMOProcedure
Parent: Procedure
Description: "Registro del procedimiento de ECMO"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 0..3
* code.coding contains tipo_soporte 1..1 and 
fallo_respiratorio 0..1 and 
 fallo_cardiaco 0..1 and PCR 0..1

* code.coding[tipo_soporte].system = $snomed
* code.coding[tipo_soporte].code = $snomed#40701008
* code.coding[tipo_soporte].display = "ECMO assistance"
* outcome from TypeOfSupportVS (required)


* code.coding[fallo_respiratorio].system = $snomed
* code.coding[fallo_respiratorio].code = $snomed#409622000
* code.coding[fallo_respiratorio].display = "Fallo respiratorio"

* code.coding[fallo_cardiaco].system = $snomed
* code.coding[fallo_cardiaco].code = $snomed#84114007
* code.coding[fallo_cardiaco].display = "Fallo cardíaco"

* code.coding[PCR].system = $snomed
* code.coding[PCR].code = $snomed#702675006
* code.coding[PCR].display = "PCR"



* performed[x] only dateTime




                       





* extension contains RescueEcmoExt named rescue_ecmo 1..1 and
DistalReperfusionExt named distal_reperfusion 1..1 and 
 PerfusionPlaceExt named perfusion_place 1..1  and 
 EcmoDaysExt named ecmo_days 1..1