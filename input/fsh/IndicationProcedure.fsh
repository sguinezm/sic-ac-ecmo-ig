Alias: $snomed = http://snomed.info/sct

Profile: IndicationProcedure
Parent: Procedure
Description: "Registro de la indicacion del procedimiento"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..3
* code.coding contains fallo_respiratorio 0..1 and 
                       fallo_cardiaco 0..1 and 
                       PCR 0..1

* code.coding[fallo_respiratorio].system = $snomed
* code.coding[fallo_respiratorio].code = $snomed#409622000
* code.coding[fallo_respiratorio].display = "Fallo respiratorio"

* code.coding[fallo_cardiaco].system = $snomed
* code.coding[fallo_cardiaco].code = $snomed#84114007
* code.coding[fallo_cardiaco].display = "Fallo cardíaco"

* code.coding[PCR].system = $snomed
* code.coding[PCR].code = $snomed#702675006
* code.coding[PCR].display = "PCR"






 