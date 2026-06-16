<p align="left">
  <img src="img/logo-factor-data-solo.jpg"/>
</p>

### Escuela Interdisciplinaria de Altos Estudios Sociales
#### Universidad Nacional de San Martín

***Equipo docente:*** [Florencia Piñeyrúa](https://github.com/pinieyrua) y [Nayla Sol Garcilazo](https://naylasolg.github.io/Site_Es/)


## **Visualización de datos**

En el proceso de investigación, la visualización de información no constituye un aspecto meramente estético ni una etapa posterior al análisis. La construcción de visualizaciones permite explorar datos, detectar patrones, formular preguntas, evaluar la calidad de la información y comunicar resultados de manera clara, rigurosa y situada.  
Las visualizaciones de datos adquieren especial relevancia en la comunicación de resultados a audiencias técnicas y no técnicas. Un buen despliegue visual (gráficos, mapas, tableros o visualizaciones interactivas) puede facilitar la comprensión de fenómenos complejos, pero también puede distorsionar la interpretación si las decisiones de diseño no son adecuadas. Por eso, visualizar datos implica tomar decisiones analíticas, cognitivas, estéticas y éticas.  
Este seminario propone una introducción práctica a la visualización de datos en R, con foco en el uso de ggplot2 y herramientas complementarias del ecosistema tidyverse. A lo largo del curso se trabajará con datos reales y se abordarán principios conceptuales de la visualización, fundamentos de percepción visual, gramática de los gráficos, teoría del color, visualización de cantidades, proporciones y distribuciones, información geográfica e interactividad.  
El seminario combina exposición teórica, análisis crítico de ejemplos y práctica guiada en R. Se trabajará con distintos tipos de datos: categóricos, cuantitativos, temporales, georreferenciados e interactivos.


## Objetivos pedagógicos

El seminario se propone que los y las estudiantes:
1. desarrollen criterios conceptuales y operativos para construir visualizaciones claras, rigurosas y comunicativamente efectivas;  
2. identifiquen las características de una visualización útil y los problemas frecuentes de una visualización engañosa, confusa o sobrecargada;  
3. comprendan principios básicos de percepción visual, codificación de datos y decodificación gráfica;  
4. incorporen la lógica de la gramática de los gráficos como marco para construir visualizaciones en capas;  
5. adquieran herramientas prácticas para producir visualizaciones estáticas, geográficas e interactivas utilizando R;  
6. desarrollen autonomía para explorar, depurar, mejorar y publicar gráficos a partir de datos reales.



## Dinámica de las clases

El seminario se organiza en una clase sincrónica semanal compuesta por dos momentos articulados:  
1. un segmento teórico-conceptual orientado a discutir principios de visualización, criterios de diseño y problemas de interpretación;  
2. una práctica guiada en R, basada en la construcción progresiva de visualizaciones con datos reales.    
Las clases combinan exposición docente, análisis colectivo de gráficos, trabajo con código, ejercicios de reproducción y modificación de visualizaciones. Se utilizarán scripts y/o documentos en R Markdown, con el objetivo de promover flujos de trabajo reproducibles.



### Contenidos por clase


__Clase 1- Fundamentos conceptuales de la visualización de datos y gramática de gráficos__  
[![](img/Download.png)](clase1.rar)   
+ La primera clase introduce la visualización como una práctica central de la investigación científica y profesional. Se trabaja sobre la idea de que un gráfico no solo “muestra” datos, sino que construye una forma de lectura e interpretación. Se analizan ejemplos de malas visualizaciones por problemas en los datos, por sobrecarga estética o por errores de percepción.  
Se introducen los aportes de Edward Tufte sobre chart junk, data-ink ratio y reducción de elementos visuales no informativos. También se abordan principios de percepción visual, búsqueda visual, sobrecarga de canales, reglas Gestalt y problemas de decodificación gráfica. Se discute la efectividad relativa de distintos canales visuales —posición, longitud, color, forma, área, ángulo y volumen— para representar variables cuantitativas y cualitativas.  
En la segunda parte de la clase se introduce la gramática de los gráficos a partir de Wilkinson y Wickham, con énfasis en los componentes básicos de ggplot2: datos, mapeos estéticos, geometrías, escalas y transformaciones estadísticas. También se diferencia el uso de R Script y R Markdown como herramientas para programar, documentar y comunicar análisis reproducibles.  
En la práctica se trabaja con datos de temperatura diaria de distintas ciudades, comenzando por Beirut y luego comparando ciudades seleccionadas. Se realizan gráficos básicos de líneas y puntos, asignando variables a posiciones, colores y geometrías.

  
  
  
__Clase 2- Puliendo gráficos para publicar: escalas, etiquetas, color e interactividad básica__  
[![](img/Download.png)](clase2.rar)  
+ La segunda clase profundiza en el proceso de mejora progresiva de gráficos construidos con ggplot2. Se trabaja sobre la idea de “sintonía fina”: una vez definido el gráfico básico, se ajustan escalas, ejes, etiquetas, leyendas, títulos, subtítulos, notas al pie, temas y colores para mejorar la legibilidad y adecuar la visualización a contextos de publicación.  
Se introducen escalas logarítmicas para comparar variables con grandes diferencias de magnitud, intervalos de confianza, manejo de números grandes, eliminación o modificación de leyendas, uso de temas y personalización de elementos gráficos. También se incorporan criterios para decidir cuándo modificar los valores por defecto de ggplot2.  
La clase incluye una sección específica sobre teoría del color. Se trabajan los espacios cromáticos RGB, HCL y CIELAB, la diferencia entre paletas secuenciales, divergentes y cualitativas, y la importancia de usar paletas perceptualmente uniformes. Se discuten problemas de interpretación generados por paletas no uniformes, como jet, y se introducen alternativas más adecuadas para visualización científica, como viridis, magma, plasma, inferno y cividis.  
Finalmente, se presenta la interactividad con bajo esfuerzo a partir de herramientas como plotly, mostrando cómo convertir gráficos de ggplot2 en visualizaciones interactivas y cómo utilizar etiquetas emergentes o tooltips.
Tanto en el segmento teórico como en la práctica se trabaja con datos de Gapminder, que contienen indicadores de desarrollo de países de distintas regiones del mundo.  

  
  
__Clase 3- Visualizando cantidades, proporciones y distribuciones__  
[![](img/Download.png)](clase3.rar)   
+ La tercera clase aborda estrategias para visualizar magnitudes absolutas, composiciones relativas y distribuciones. Se diferencian datos categóricos, ordinales, discretos y continuos, y se discute qué tipo de gráfico resulta más adecuado según el tipo de variable y la pregunta analítica.  
Se trabajan gráficos de barras y columnas mediante geom_col() y geom_bar(), enfatizando la diferencia entre representar una variable numérica y contar frecuencias de una variable categórica. Se discute el ordenamiento de categorías, la comparación entre valores absolutos y proporciones, y los problemas de interpretación asociados a gráficos de torta, áreas o volúmenes.  
Para representar distribuciones se introducen histogramas, gráficos de densidad y boxplots. Se analizan sus ventajas y limitaciones para observar concentración, dispersión, asimetría, valores atípicos y comparación entre grupos. También se incorporan facetados como estrategia para comparar patrones entre categorías sin sobrecargar un único gráfico.   
En el segmento teórico se retoman datos de la campaña #MenstruAcción en Argentina. En la práctica se trabaja con datos de la Encuesta Permanente de Hogares (EPH), aplicando herramientas de visualización para analizar variables sociales y laborales.  

  
  
__Clase 4- Visualizaciones alternativas para comparación, composición y patrones multivariados__  
[![](img/Download.png)](clase4.rar)  
+ La cuarta clase amplía el repertorio gráfico más allá de las barras tradicionales. Se parte del problema de que, aunque los gráficos de barras son una herramienta efectiva, su uso reiterado puede producir visualizaciones pesadas, repetitivas o poco eficientes cuando se trabaja con muchas categorías.  
Se introducen dotplots y lollipop charts como alternativas minimalistas para comparar categorías. Se trabaja con treemaps para representar estructuras de composición con múltiples categorías, señalando sus ventajas para condensar información y sus límites derivados del uso del área como canal de comparación. También se presentan gráficos waffle para comunicar proporciones de manera intuitiva y mapas de calor para detectar patrones en la combinación de varias variables categóricas o discretizadas.  
La clase incorpora además una discusión sobre medidas de resumen (media, mediana y dispersión) y sobre cómo las decisiones de agregación afectan la visualización e interpretación de los datos.  
En la práctica se trabaja con la EPH, con foco en variables como sector de actividad, ingresos, edad, región y género. El objetivo es producir visualizaciones que permitan comparar cantidades, composiciones y patrones multivariados sin saturar la lectura.  

  
  
__Clase 5- Visualización de información geográfica e interactividad con mapas__  
[![](img/Download.png)](clase5.rar)   
+ La quinta clase introduce la visualización de datos georreferenciados. Se trabajan nociones básicas de cartografía, sistemas de coordenadas, proyecciones, geometrías vectoriales y capas de información. Se diferencia entre geometrías de puntos, líneas y polígonos, y se discute cómo elegir el nivel de detalle adecuado para un mapa según la pregunta de investigación.  
Se abordan mapas estáticos con R, combinando datos geográficos y datos sociales. Se trabaja con mapas de múltiples capas, mapas temáticos, mapas de color y mapas de densidad, prestando atención a sus diferencias conceptuales y a los riesgos de interpretación asociados a cada tipo de representación.  
Tanto en el teórico como en la práctica se trabaja con datos georreferenciados de la Ciudad Autónoma de Buenos Aires, especialmente polígonos correspondientes a radios censales. Se utilizan herramientas del ecosistema sf y ggplot2 para leer, transformar y visualizar datos espaciales.  
La clase cierra con una introducción a mapas interactivos mediante leaflet. Se trabaja con transformación de sistemas de coordenadas, uso de WGS84/EPSG:4326, controles de zoom, desplazamiento, popups informativos y control de capas. Se discute cuándo conviene utilizar mapas estáticos y cuándo la interactividad aporta valor analítico o comunicacional.  


## Bibliografía complementaria

- [Healy, Kieran (2019). Data Visualization: A Practical Introduction, Princeton: Princeton University Press. Versión online gratuita](http://socviz.co/)  

- [Wickham, Hadley y Grolemund, Garret (2017). R for Data Science Import, Tidy, Transform, Visualize, and Model Data, California: O’Reilly Media. Versión online gratuita en castellano](https://es.r4ds.hadley.nz/) 
[Versión online gratuita en inglés](http://r4ds.had.co.nz/)   

- [Vázquez Brust, Antonio (2020). Ciencia de datos para gente sociable.](https://bitsandbricks.github.io/ciencia_de_datos_gente_sociable/)

- [Tufte, Edward (1983). The Visual Display of Quantitative Information, Cheshire, CT: Graphics Press.](https://www.econ.upf.edu/~michael/visualdata/tufte-aesthetics_and_technique.pdf)

- [Introduction to Modern Statistics](https://openintro-ims.netlify.app/) Este manual no forma parte del contenido de la diplomatura, pero recomendamos su lectura para quienes necesiten acompañamiento en nociones de estadística.

- Cleveland, William S., & McGill, Robert. 1984. “Graphical Perception: Theory, Experimentation, and Application to the Development of Graphical Methods.” Journal of the American Statistical Association, 79(387), 531–554.
