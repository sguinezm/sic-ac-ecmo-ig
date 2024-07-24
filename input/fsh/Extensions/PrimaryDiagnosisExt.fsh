Extension: PrimaryDiagnosisExt
Id: PrimaryDiagnosisExt
Title: "Diagnóstico principal"
Description: "Diagnóstico principal"

* ^version = "1.0"
* ^experimental = false
* ^date = "2024-04-29"
* ^publisher = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* . ^short = "PrimaryDiagnosisExt"
* . 0..*
* . ^definition = "Diagnóstico principal"
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from PrimaryDiagnosisVS