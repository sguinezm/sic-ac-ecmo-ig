Extension: AddressNeighborhoodCardioCx
Id: AddressNeighborhoodCardioCx
Title: "Población CardioCx"
Description: "Población/barrio en la dirección del paciente de la plataforma CardioCx"
Context: Address
* ^version = "1.0"
* ^experimental = false
* ^date = "2024-04-29"
* ^publisher = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* . ^short = "AddressNeighborhoodCardioCx"
* . 0..*
* . ^definition = "Se puede indicar la población o barrio donde vive el paciente como una referencia"
* value[x] 0..1
* value[x] only string