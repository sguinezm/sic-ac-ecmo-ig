Extension: EcmoDaysExt
Id: EcmoDaysExt
Title: "ECMO days"
Description: "Número de días que duró el procedimineto"

* ^version = "1.0"
* ^experimental = false
* ^date = "2024-04-29"
* ^publisher = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* . ^short = "Número de días que duró el procedimineto"
* . 0..1
* . ^definition = "Número de días que duró el procedimineto"
* value[x] 0..1
* value[x] only integer
