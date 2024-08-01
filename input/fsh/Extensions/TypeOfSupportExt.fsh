Extension: TypeOfSupportExt
Id: TypeOfSupportExt
Title: "Tipo de soporte"
Description: "Se describe el tipo de soporte en el procedimiento"

* ^version = "1.0"
* ^experimental = false
* ^date = "2024-04-29"
* ^publisher = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* . ^short = "PrimaryDiagnosisExt"
* . 0..*
* . ^definition = "Se describe el tipo de soporte en el procedimiento"
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from TypeOfSupportVS