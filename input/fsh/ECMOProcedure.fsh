Alias: $snomed = http://snomed.info/sct

Profile: ECMOProcedure
Parent: Procedure
Description: "Registro del procedimiento de ECMO"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 0..2
* code.coding contains tipo_soporte 1..1 and 
                       fecha 1..1

* code.coding[tipo_soporte].system = $snomed
* code.coding[tipo_soporte].code = $snomed#40701008
* code.coding[tipo_soporte].display = "ECMO assistance"
* outcome from TypeOfSupportVS (required)



* code.coding[fecha].system = $snomed
* code.coding[fecha].code = $snomed#410672004
* code.coding[fecha].display = "Cannulation date"






* extension contains RescueEcmoExt named rescue_ecmo 1..1 and
DistalReperfusionExt named distal_reperfusion 1..1 and 
 PerfusionPlaceExt named perfusion_place 1..1  and 
 EcmoDaysExt named ecmo_days 1..1