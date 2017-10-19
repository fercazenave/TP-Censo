#TP Censo 
**Debido a las sospechas acerca de la confiabilidad de los resultados del último censo, se quiere un nuevo sistema que realice el procesamiento de los datos recaudados, tomando como muestra una ciudad.**

Los censistas recorrieron los domicilios de cada ciudad, entregaron los formularios completos y el centro de cómputos ya cargó toda la información mediante dispositivos de reconocimiento óptico, por lo que nos resta simplemente plantear un sistema que organice la información y permita obtener algunas estadísticas de vital importancia para planificar las futuras políticas públicas.**

En una ciudad se registran los formularios de vivienda de todos los domicilios censados:

En los domicilios particulares se completó un formulario de vivienda simple, que contiene la cantidad de ambientes de la vivienda y sus artefactos (como heladera, computadora, celular, etc.). En estos se completó además un formulario por cada persona que habita la vivienda, que puede ser reducido o extendido. No hay mayores precisiones acerca de por qué a veces se utiliza uno u otro.

 - En el reducido se pregunta la edad y nivel de estudios (primario, secundario, terciario, universitario). 
 - En el extendido se pregunta además si actualmente trabaja o está desocupado, si es descendiente de pueblos originarios, en cuyo caso se indica la etnia, o afroamericanos. 

Las viviendas colectivas, como ser cárceles, geriátricos, conventos, hoteles, completan un formulario distinto donde se registra la superficie de la vivienda y la cantidad de ocupantes, pero no se completa un formulario por cada persona.

Para poder implementar el censo se necesitó gran cantidad de censistas entre quienes se distribuyeron los domicilios a censar. Para ello se recibieron voluntarios y además se llamó a personal docente de la facultad de antropología (censistas antropólogos). Los últimos tienen cada uno una especialidad en alguna etnia en particular (correspondiente a un pueblo originario).  De cada vivienda se registra el censista que le correspondió.
 
Se quiere saber:

1. Si un domicilio está hacinado
 - Un domicilio simple es hacinado si tiene más del doble de personas que de ambientes.
 - Un domicilio colectivo está hacinado si hay menos de 10 m2 por persona.
2. La colección de domicilios hacinados de una ciudad
3. La población total de la ciudad.
4. El porcentaje de la población de la ciudad que es de clase media. Se considera de clase media a aquellas personas que habiten una vivienda que:
 - Sea simple, tenga una computadora y todos sus ocupantes mayores de 18 años sean profesionales. Una persona se considera profesional si tiene estudios universitarios y si se utilizó el formulario extendido, además esté trabajando.
 - Sea colectiva con más de 100 m2 de superficie.
5. Cuanto tiempo tardo en atenderse un domicilio.  Este tiempo dependerá de su censista:
 - Un censista voluntario tarda 10 minutos por cada vivienda simple, más 2 minutos por cada persona del formulario reducido y 4 por cada una del extendido.
 - Un censista antropólogo se toma el mismo tiempo que los voluntarios con las viviendas simples, salvo que encuentre alguna persona descendiente de pueblos originarios de la misma etnia en la que se especializa, demora 30 minutos.
 - En las viviendas colectivas cualquier censista tarda 5 minutos.
6. El domicilio que más tiempo se tardó en censar en la ciudad.

Tip: puede considerar que tanto artefactos, niveles de estudios y etnias pueden ser modelados como strings.
