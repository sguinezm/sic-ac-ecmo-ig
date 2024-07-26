Extension: PerfusionPlaceExt
Id: PerfusionPlaceExt
Title: "Lugar de perfusión"
Description: "Se indica el lugar de perfusión"

* ^version = "1.0"
* ^experimental = false
* ^date = "2024-04-29"
* ^publisher = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* . ^short = "Se indica el lugar de perfusión"
* . 0..1
* . ^definition = "Se indica el lugar de perfusión"
* value[x] 0..1
* value[x] only boolean
