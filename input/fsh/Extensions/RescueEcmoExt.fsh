Extension: RescueEcmoExt
Id: RescueEcmoExt
Title: "ECMO de rescate"
Description: "Se indica el proceso de ECMO de rescate"

* ^version = "1.0"
* ^experimental = false
* ^date = "2024-04-29"
* ^publisher = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* . ^short = "Se indica el proceso de ECMO de rescate"
* . 0..1
* . ^definition = "Se indica el proceso de ECMO de rescate"
* value[x] 0..1
* value[x] only boolean
