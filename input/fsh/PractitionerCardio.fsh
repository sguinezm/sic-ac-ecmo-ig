Alias: $SegundoApellido = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido
Alias: $VSTiposDocumentos = https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSTiposDocumentos
Alias: $CodigoPaises = https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises
Alias: $VSTiposDocumentos = https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSTiposDocumentos


Profile: PractitionerCardio
Parent: Practitioner
Description: "Recurso que representa al cirujano en la plataforma de cirugías cardíacas."

Title: "PractitionerCardio"

* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.description = "Este slice se genera para definir el segundo apellido del médico"
* name ^slicing.rules = #open
* name ^short = "Nombres y Apellidos del médico considerando, según el caso: 1er Nombre, Nombres, 1er Apellido y 2o Apellido"
* name ^definition = "Nombre del médico considerando, según el caso: 1er Nombre, Nombres, 1er Apellido y 2o Apellido"
* name contains
    NombreOficial 1..1 MS and
    NombreSocial 0..1 MS
* name[NombreOficial] ^short = "Determinación del nombre registrado oficialmente del médico"
* name[NombreOficial] ^definition = "Determinación del nombre registrado oficialmente del médico"
* name[NombreOficial].use 1.. MS
* name[NombreOficial].use = #official
* name[NombreOficial].use ^short = "uso del nombre del médico"
* name[NombreOficial].use ^definition = "este slice corresponde al nombre registrado al momento de nacer, por lo que se fuerza el valor \"official\""
* name[NombreOficial].use ^comment = "Para ser considerado como el slice determinado para el uso de nombre completo, el use DEBE ser de valor de código \"official\""
* name[NombreOficial].family 1.. MS
* name[NombreOficial].family ^short = "1er Apellido"
* name[NombreOficial].family ^definition = "Se define el primer apellido registrado al momento de nacer o aquel que se ha inscrito legalmente en el Registro Civil"
* name[NombreOficial].family.extension ^short = "Extensión para el segundo apellido"
* name[NombreOficial].family.extension ^definition = "Extensión para la declaracion de un segundo apellido"
* name[NombreOficial].family.extension contains $SegundoApellido named segundoApellido 0..1 MS
* name[NombreOficial].given 1.. MS
* name[NombreOficial].given ^short = "Primer nombre y nombres del médico"
* name[NombreOficial].given ^definition = "Todos los nombres de los médicos no necesariamente solo el Primer Nombre"
* identifier 1.. MS
* identifier ^short = "Listados de Id de médico. De poseer una CI con RUN vigente, este DEBE ser ingresado"
* identifier ^definition = "Este es el listado de Identificaciones de un médico. Se procura como R2 el RUN, pero en caso de no existir ese identificador se debe ocupar otro nacional u otro otorgado por país extranjero"
* identifier ^comment = "En caso de que el médico posea una CI con número RUN válido, este debe ser ingresado como identificador, independiente de que tenga otros identificadores, los cuales también pueden ser ingresados. La identificación implica el ingreso del tipo de documento, el país de origen de ese documento y ev valor del identificador"
* identifier.extension MS
* identifier.use MS
* identifier.use ^definition = "Se definirá este uso siempre como \"official\" debido a que cualquier ID presentado para motivos de este perfil deb ser de este tipo"
* identifier.use ^comment = "Se definirá como official pues en una primera etapa solo se considerarán los identidicadores en esa categoría. Para una segunda etapa se abrirá este elemento para cualquier clase de identificador"
* identifier.type MS
* identifier.type from $VSTiposDocumentos (extensible)
* identifier.type ^short = "Tipo de documento de Id (Extensible)"
* identifier.type ^definition = "Se define como tipo de documento de Id, aquel definido en el Sistema de Codificación V2-0203 de Hl7. Este sistema es extensible. Para médicos sin documeto local deben especificar el de origen. médicos sin Id, deben usar el código MR = Local Medical Record, es decir numero del registro clínico abierto en el establecimiento"
* identifier.type ^comment = "De haber RUN, este se debe usar. De haber Run temporal, se debe usar ese identificador. médicos sin identificador Chileno deben usar su CI o Pasaporte de origen. médicos sin identificación se debe registrar con el numero de registro clínico generado en el recinto de salud"
* identifier.type ^binding.description = "Value Set de Tipos de Documentos y CI Nacionales"
* identifier.type.extension ^short = "País de Origen del Documento de Id"
* identifier.type.extension ^definition = "Se usa esta extensión para agregarle al tipo de documento el país de origen de este"
* identifier.type.extension contains $CodigoPaises named paises 0..1 MS
* identifier.type.coding MS
* identifier.type.coding.system MS
* identifier.type.coding.system ^short = "Sistema de identificación de tipos de documentos"
* identifier.type.coding.system ^definition = "Sistema mediante el cual se obtienen los códigos para un determinado tipo de documento"
* identifier.type.coding.system ^comment = "En la URL del sistema se describe el set de códigos. Por ejemplo si se desea usar Cédula de identidad el código es NNxxx en donde xxx corresponde al identificador del país según la norma iso3166-1-N. Dado lo anterior si fuera Chile, el tipo de documento sería NNCL. En el Caso de Usar un Pasaporte este no requiere identificar país de origen dado que este es un elemento adicional, por lo que independiente del país el código será PPT según el VS indicado"
* identifier.type.coding.code MS
* identifier.type.coding.code ^short = "Código de Tipo de Documento"
* identifier.type.coding.code ^definition = "Código de Tipo de Documento"
* identifier.type.coding.display MS
* identifier.type.coding.display ^short = "Glosa del Código Documento"
* identifier.type.coding.display ^definition = "Glosa del Código Documento"
* identifier.value ^short = "Número o valor de identificación"
* identifier.value ^definition = "Número o valor de identificación"

* qualification ^slicing.discriminator.type = #value
* qualification ^slicing.discriminator.path = "use"
* qualification ^slicing.description = "Especialidad y subespecialidad"
* qualification ^slicing.rules = #open
* qualification ^short = "Especialidad y subespecialdiad"

* qualification contains
    Esp 0..* and
    SubEsp 0..* 
* qualification[Esp].code.text 1..1
* qualification[Esp].period MS
* qualification[Esp].period ^short = "Período en el cual se entregó la especialidad considerando fecha de emisión y de caducidad"
* qualification[Esp].period.start ^short = "Fecha de emisión"
* qualification[Esp].period.end ^short = "Fecha de expiración"
* qualification[Esp].issuer ^short = "Entidad que otorga la especialidad"
* qualification[Esp].issuer ^definition = "El nombre de la entidad se solicitará en texto libre"
* qualification[Esp].issuer.display ^short = "La entidad que otorga en texto libre"
* qualification[Esp].issuer.display ^definition = "La entidad que otorga en texto libre"
* qualification[SubEsp].code.text 1..1