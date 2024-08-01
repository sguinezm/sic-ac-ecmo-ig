Alias: $snomed = http://snomed.info/sct

Profile: DateOfCannulationProcedure
Parent: Procedure
Description: "Fecha de canulación"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains fecha_canulacion 0..1 

* code.coding[fecha_canulacion].system = $snomed
* code.coding[fecha_canulacion].code = $snomed#410672004
* code.coding[fecha_canulacion].display = "Se indica fecha de canulación"

* performed[x] only dateTime




