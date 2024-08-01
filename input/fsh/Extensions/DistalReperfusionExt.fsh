Extension: DistalReperfusionExt
Id: DistalReperfusionExt
Title: "Reperfusión distal"
Description: "Se describe reperfusión distal"

* ^version = "1.0"
* ^experimental = false
* ^date = "2024-04-29"
* ^publisher = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* . ^short = "PrimaryDiagnosisExt"
* . 0..*
* . ^definition = "Se describe reperfusión distal"
* value[x] 0..1
* value[x] only boolean
