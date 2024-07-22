Alias: $observation-bodyheight = http://hl7.org/fhir/StructureDefinition/bodyheight
Alias: $observation-bodyweight = http://hl7.org/fhir/StructureDefinition/bodyweight
Profile: BundleCardio
Parent: Bundle
Id: BundleCardio
Title: "Bundle Cardio"
Description: "Recurso que permite compartir la información de cirugia compleja."

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id MS
* id ^short = "Id propio del recurso"
* type MS
* type ^short = "Indica de qué tipo de bundle es."
* type = #document
* timestamp MS
* timestamp ^short = "Cuando el Bundle fue construido"

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry 8..8 MS
* entry ^short = "Entrada en el Bundle: contendrá un recurso o información"
* entry contains cardioComposition 1..1 and 
                 paciente 1..1    and 
                 tipoSangre 1..1 and
                 altura 0..1 and 
                 peso 0..1 and 
                 tratamientoDiabetes 0..1 and 
                 hipertension 0..1 and 
                 hipercolesterolemia 0..1 and 
                 ruidoCarotideo 0..1 and 
                 ultimaCreatinina 0..1 and 
                 enfermedadesPulmonares 0..1 and 
                 ritmoCardiacoPreoperatorio 0..1 and 
                 condicionExtracardiaca 0..1 and 
                 nefropatia 0..1 and 
                 tipoMuerte 0..1 and
                 questionarioProcedimiento 0..1 and 
                 questionarioOtroProcedimiento 0..1 and 
                 rolProfesional 3..5 and 
                 procedimientoCardio 0..1 and 
                 angina 0..1 and 
                 capacidadFuncional 0..1 and 
                 infarto 0..1 and 
                 infartoReciente 0..1 and 
                 insuficienciaCardíacaCongestiva 0..1 and 
                 ultimaCateterizacion 0..1 and 
                 segmentosMuertos 0..1 and 
                 fraccionEyeccion 0..1 and 
                 fraccionEyeccionValor 0..1 and 
                 presionSistolica 0..1 and 
                 gradienteAVG 0..1 and 
                 LVED 0..1 and 
                 PWAP 0..1 and 
                 numeroAnastomosisArteriales 0..1 and 
                 numeroAnastomosisVenosa 0..1 and
                 arteriasUsadasConductos 0..1 and 
                 estenosis 0..1 and 
                 dispositivoValvula 0..1 and 
                 endocarditisInfecciosa 0..1 and 
                 valvulaNativaPatologia 0..1 and 
                 procedimientoValvula 0..1 and 
                 ecocardiograma 0..1 and 
                 ecocardiogramaProcedimiento 0..1 and 
                 perfusionTemperatura 0..1 and 
                 solucionCardioplegia 0..1 and 
                 temperatureCardioplegia 0..1 and 
                 ritmoCardioplegia 0..1 and 
                 balonContrapulsacion 0..1 and 
                 razonBalon 0..1 and 
                 tiempoPerfusion 0..1 and 
                 tiempoAcumulado 0..1 and
                 tiempoTotal 0..1 and 
                 canulacionArterial 0..1 and 
                 canulacionVenosa 0..1 and 
                 circulacionObservacion 0..1
                 
               
* entry[cardioComposition] ^short = "Entrada en el Bundle: contendrá un recurso cardioComposition"
* entry[cardioComposition].resource only CompositionCardiocirugia
* entry[cardioComposition].resource ^short = "Descripcion DETALLADA , PRIMER RECURSO COMPOSITION"

* entry[paciente] ^short = "Paciente"
* entry[paciente].resource only PatientCardio
* entry[paciente].resource ^short = "Descripcion del Paciente"


* entry[tipoSangre] ^short = "Observación de tipo de sangre"
* entry[tipoSangre].resource only BloodTypeObservation
* entry[tipoSangre].resource ^short = "Se detalla el tipo de sangre del paciente"

* entry[altura] ^short = "Altura de la persona"
* entry[altura].resource only observation-bodyheight
* entry[altura].resource ^short = "Se indica la altura de la persona"


* entry[peso] ^short = "Peso de la persona"
* entry[peso].resource only observation-bodyweight
* entry[peso].resource ^short = "Se indica el peso de la persona"


* entry[tratamientoDiabetes] ^short = "Tratamiento de diabetes del paciente"
* entry[tratamientoDiabetes].resource only DiabetesCondition
* entry[tratamientoDiabetes].resource ^short = "Se indica el paciente tiene un tratamiento de pacientes"

* entry[hipertension] ^short = "Hipertensión"
* entry[hipertension].resource only HypertensionCondition
* entry[hipertension].resource ^short = "Se indica si el paciente padece de hipertensión"

* entry[hipercolesterolemia] ^short = "Hipercolesterolemia"
* entry[hipercolesterolemia].resource only HypercholesterolemiaCondition
* entry[hipercolesterolemia].resource ^short = "Se indica si el paciente padece de hipercolesterolemia"

* entry[ruidoCarotideo] ^short = "Ruido carotídeo"
* entry[ruidoCarotideo].resource only CarotidBruitCondition
* entry[ruidoCarotideo].resource ^short = "Se indica si el paciente tiene ruido carotídeo"

* entry[ultimaCreatinina] ^short = "Última creatinina"
* entry[ultimaCreatinina].resource only LastPreoperativeCreatinineObservation
* entry[ultimaCreatinina].resource ^short = "Se indica la última creatinina del paciente"

* entry[enfermedadesPulmonares] ^short = "Enfermedades pulmonares"
* entry[enfermedadesPulmonares].resource only ChronicLungDiseaseCondition
* entry[enfermedadesPulmonares].resource ^short = "Se indica si el paciente ha tenido alguna enfermedad pulmonar"

* entry[ritmoCardiacoPreoperatorio] ^short = "Ritmo cardíaco preoperatorio"
* entry[ritmoCardiacoPreoperatorio].resource only PreoperativeHeartRythmObservation
* entry[ritmoCardiacoPreoperatorio].resource ^short = "Se indica el ritmo cardíaco preoperatorio del paciente"

* entry[condicionExtracardiaca] ^short = "Condición extracardíaca"
* entry[condicionExtracardiaca].resource only ExtraCardiacArteriopathyCondition
* entry[condicionExtracardiaca].resource ^short = "Se indica si el paciente tiene una condición extracardíaca"

* entry[nefropatia] ^short = "Nefropatía"
* entry[nefropatia].resource only NephropathyCondition
* entry[nefropatia].resource ^short = "Se indica si el paciente padece de nefropatía" 


* entry[tipoMuerte] ^short = "Tipo de muerte"
* entry[tipoMuerte].resource only TypeOfDiseaseCondition
* entry[tipoMuerte].resource ^short = "Se indica el tipo de muerte"  

* entry[questionarioProcedimiento] ^short = "Preguntas del procedimiento"
* entry[questionarioProcedimiento].resource only ProcedureQuestionnaire
* entry[questionarioProcedimiento].resource ^short = "Se realizan preguntas del procedimiento al paciente"  

* entry[questionarioOtroProcedimiento] ^short = "Preguntas de otros procedimientos"
* entry[questionarioOtroProcedimiento].resource only OtherProceduresQuestionnaire
* entry[questionarioOtroProcedimiento].resource ^short = "Se realizan preguntas del procedimiento al paciente" 

* entry[rolProfesional] ^short = "Rol de profesional"
* entry[rolProfesional].resource only PractitionerRoleCardio
* entry[rolProfesional].resource ^short = "Se indica el Rol de profesional" 

* entry[procedimientoCardio] ^short = "Procedimiento cardio"
* entry[procedimientoCardio].resource only ProcedureCardio
* entry[procedimientoCardio].resource ^short = "Se indica el Procedimiento cardio" 

 
* entry[angina] ^short = "Angina"
* entry[angina].resource only AnginaObservation
* entry[angina].resource ^short = "Se indica la observación de angina en el paciente"   

* entry[capacidadFuncional] ^short = "Capacidad funcional"
* entry[capacidadFuncional].resource only FunctionalCapacityObservation
* entry[capacidadFuncional].resource ^short = "Se detalla la capacidad funcional del paciente"

* entry[infarto] ^short = "Historia cardiovascular del paciente"
* entry[infarto].resource only PreviousMIObservation
* entry[infarto].resource ^short = "Categorización del número de infartos al miocardio sufridos por el paciente previo a la inteversión"

* entry[infartoReciente] ^short = "Historia cardiovascular reciente del paciente"
* entry[infartoReciente].resource only MostRecentMIObservation
* entry[infartoReciente].resource ^short = "Categorización del número de infartos al miocardio sufridos recientemente por el paciente previo a la inteversión"

* entry[insuficienciaCardíacaCongestiva] ^short = "insuficiencia cardíaca congestiva"
* entry[insuficienciaCardíacaCongestiva].resource only CongestiveHeartFailureObservation
* entry[insuficienciaCardíacaCongestiva].resource ^short = "Se indica si el paciente ha sufrido una insuficiencia cardíaca congestiva"


* entry[ultimaCateterizacion] ^short = "ultima Cateterizacion"
* entry[ultimaCateterizacion].resource only LastCatheterizationObservation
* entry[ultimaCateterizacion].resource ^short = "Se indica la última Cateterizacion"  


* entry[segmentosMuertos] ^short = "Segmentos coronarios muertos"
* entry[segmentosMuertos].resource only DiseasedCoronarySegmentObservation
* entry[segmentosMuertos].resource ^short = "Se indica si tuvo segmentos coronarios muertos"  


* entry[fraccionEyeccion] ^short = "Fracción de eyección"
* entry[fraccionEyeccion].resource only EjectionFractionObservation
* entry[fraccionEyeccion].resource ^short = "Se indica la fracción de eyección"  

* entry[fraccionEyeccionValor] ^short = "Valor de fracción de eyección"
* entry[fraccionEyeccionValor].resource only EjectionFractionValueObservation
* entry[fraccionEyeccionValor].resource ^short = "Se indica el valor de la fracción de eyección"  

* entry[presionSistolica] ^short = "Presión sistólica"
* entry[presionSistolica].resource only SystolicPressureObservation
* entry[presionSistolica].resource ^short = "Se indica la presión sistólica"

* entry[gradienteAVG] ^short = "Gradiente AVG"
* entry[gradienteAVG].resource only AVGradient
* entry[gradienteAVG].resource ^short = "Se indica gradiente AVG"

* entry[LVED] ^short = "Presión de fin de diástole del ventrículo izquierdo"
* entry[LVED].resource only AVGradient
* entry[LVED].resource ^short = "Observación de la presión de fin de diástole del ventrículo izquierdo"

* entry[PWAP] ^short = "presión de la aurícula izquierda (LA)"
* entry[PWAP].resource only PAWPObservation
* entry[PWAP].resource ^short = "Medida de la presión de la aurícula izquierda (LA) o presión de enclavamiento capilar pulmonar (PAWP)"

* entry[numeroAnastomosisArteriales] ^short = "Número de anastomosis arteriales distales"
* entry[numeroAnastomosisArteriales].resource only NumberOfDistalArterialAnastomosesObservation
* entry[numeroAnastomosisArteriales].resource ^short = "Se indica el número de anastomosis arteriales distales"

* entry[numeroAnastomosisVenosa] ^short = "Número de anastomosis venosa distales"
* entry[numeroAnastomosisVenosa].resource only NumberOfDistalVenousAnastomosesObservation
* entry[numeroAnastomosisVenosa].resource ^short = "Se indica el número de anastomosis venosa distales"

* entry[arteriasUsadasConductos] ^short = "Número de arterias usadas como conductos"
* entry[arteriasUsadasConductos].resource only ArteriesUsedAsConduitsObservation
* entry[arteriasUsadasConductos].resource ^short = "Se indica el número de arterias usadas como conductos"

* entry[estenosis] ^short = "Estenosis"
* entry[estenosis].resource only StenosisObservation
* entry[estenosis].resource ^short = "Se indica la presencia de estenosis"

* entry[dispositivoValvula] ^short = "Dispositivo en válvula"
* entry[dispositivoValvula].resource only ValveDevice
* entry[dispositivoValvula].resource ^short = "Se indica si tiene dispositivo en válvula"

* entry[endocarditisInfecciosa] ^short = "Endocarditis infecciosa"
* entry[endocarditisInfecciosa].resource only EndocarditisInfecciosaObservation
* entry[endocarditisInfecciosa].resource ^short = "Se indica si padece de endocarditis infecciosa"

* entry[valvulaNativaPatologia] ^short = "Patología de válvula nativa"
* entry[valvulaNativaPatologia].resource only NativeValvePathologyObservation
* entry[valvulaNativaPatologia].resource ^short = "Se indica si tiene patología de válvula nativa"

* entry[procedimientoValvula] ^short = "Procedimiento de válvula"
* entry[procedimientoValvula].resource only ValveProcedure
* entry[procedimientoValvula].resource ^short = "Se indica si se hace un procedimiento de válvula"

* entry[ecocardiogramaProcedimiento] ^short = "Procedimiento ecocardiograma"
* entry[ecocardiogramaProcedimiento].resource only EchocardiogramProcedure
* entry[ecocardiogramaProcedimiento].resource ^short = "Se indica detalles del procedimiento de ecocardiograma"

* entry[ecocardiograma] ^short = "Ecocardiograma"
* entry[ecocardiograma].resource only EchocardiogramsObservation
* entry[ecocardiograma].resource ^short = "Se indica detalles de ecocardiogramas"

* entry[perfusionTemperatura] ^short = "Temperatura de perfusion"
* entry[perfusionTemperatura].resource only PerfusionTemperatureObservation
* entry[perfusionTemperatura].resource ^short = "Se indica detalles de temperatura de perfusión"


* entry[solucionCardioplegia] ^short = "Solución Cardioplegía"
* entry[solucionCardioplegia].resource only CardioplegiaInfusionModeObservation
* entry[solucionCardioplegia].resource ^short = "Se indica detalles de la solución de cardioplegía"


* entry[temperatureCardioplegia] ^short = "Temperatura de  Cardioplegía"
* entry[temperatureCardioplegia].resource only CardioplegiaTemperatureObservation
* entry[temperatureCardioplegia].resource ^short = "Se indica detalles de la temperatura de cardioplegía"


* entry[ritmoCardioplegia] ^short = "Ritmo de  Cardioplegía"
* entry[ritmoCardioplegia].resource only  CardioplegiaRhytmObservation
* entry[ritmoCardioplegia].resource ^short = "Se indica detalles del ritmo de cardioplegía"


* entry[balonContrapulsacion] ^short = "Balón de contrapulsación"
* entry[balonContrapulsacion].resource only  BallonCounterpulsationObservation
* entry[balonContrapulsacion].resource ^short = "Se indica detalles del balón de contrapulsación"


* entry[razonBalon] ^short = "Razón de balón de contrapulsación"
* entry[razonBalon].resource only ReasonBallonObservation
* entry[razonBalon].resource ^short = "Se indica detalles de la razón de balón de contrapulsación"

* entry[tiempoPerfusion] ^short = "Tiempo de perfusión"
* entry[tiempoPerfusion].resource only ReasonBallonObservation
* entry[tiempoPerfusion].resource ^short = "Se indica detalles del tiempo de perfusión"

* entry[tiempoAcumulado] ^short = "Tiempo acumulado"
* entry[tiempoAcumulado].resource only CumulativeCrossClampTimeObservation
* entry[tiempoAcumulado].resource ^short = "Se indica detalles de tiempo acumulado"

* entry[tiempoTotal] ^short = "Tiempo total"
* entry[tiempoTotal].resource only TotalCirculatoryArrestTimeObservation
* entry[tiempoTotal].resource ^short = "Se indica detalles de tiempo total"

* entry[canulacionArterial] ^short = "Canulacion Arterial"
* entry[canulacionArterial].resource only ArterialCannulationObservation
* entry[canulacionArterial].resource ^short = "Se indica detalles de canulación arterial"

* entry[canulacionVenosa] ^short = "Canulacion Venosa"
* entry[canulacionVenosa].resource only VenousCannulationsObservation
* entry[canulacionVenosa].resource ^short = "Se indica detalles de canulación venosa"

* entry[circulacionObservacion] ^short = "Circulación"
* entry[circulacionObservacion].resource only CirculatoryObservation
* entry[circulacionObservacion].resource ^short = "Se indica detalles de la circulación"