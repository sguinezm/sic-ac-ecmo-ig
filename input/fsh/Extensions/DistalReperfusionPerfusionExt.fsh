
Extension: DistalReperfusionPerfusionExt
Id: DistalReperfusionPerfusionExt
Title: "Extension ContactadoLE"
Description: "Extension ContactadoLE"
Context: Procedure
* ^version = "0.1"
* ^status = #draft
* ^publisher = "Unidad de Interoperabilidad - MINSAL"
* ^contact.name = "Unidad de Interoperabilidad - MINSAL"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://interoperabilidad.minsal.cl"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* . ^short = "Extension ContactadoLE"
* . ^definition = "Extension ContactadoLE"
* extension contains
    DistalReperfusion 1..1 MS and
    PerfusionPlace 0..1 MS
* extension[DistalReperfusion].value[x] 1..1 MS
* extension[DistalReperfusion].value[x] only boolean 
* extension[PerfusionPlace].value[x] only string
* extension[PerfusionPlace].value[x] ^short = "Codigo de la etnia"

