#Clase 1 - Módulo 2
library(ggplot2)
library(tidyverse)

# Datos de temperatura, cortesía de https://www.kaggle.com/sudalairajkumar/daily-temperature-of-major-cities
load(file='clase1/data/temps.rda') #probablemente ustedes lo tengan dentro de la ruta /data o ./data
temps_beirut <- temps[temps$city == "Beirut",]

ggplot(temps_beirut)

#información que necesita ggplot:
#DATOS (df)
#AES (qué representar en cada eje, colores, estética)
#GEOMETRIAS (qué tipo de gráfico quiero?)

ggplot(temps_beirut, aes(x = month, y = temperature)) +
  geom_boxplot()



ggplot(temps, aes(x = day_of_year, y = temperature, color = city)) +
  geom_line()



ggplot(temps, aes(x = day_of_year, y = city, color = temperature)) +
  geom_point()

#este código no va a correr, pero lo explicamos en clase
#gráfico de la eph donde presente la variable ingreso ponderada
#ggplot(eph, aes(x = P21, weights(PONDIIO))) +
#  geom_point()
#en la práctica no lo vamos a encontrar así pero tenemos que saber que en ggplot no tenemos que pasar SIEMPRE variables en eje x e y

ggplot(temps, aes(x = month, y = temperature, fill = city)) +
  geom_boxplot()

ggplot(temps, aes(x = month, y = temperature, color = month, fill = city)) +
  geom_boxplot()




#segunda parte: práctica
menstru_full <- read_csv("./data/menstru_full.csv") #es posible que en el caso de ustedes la ruta sea./data/menstru_full.csv)

colnames(menstru_full)


precio_medio_anual <- menstru_full %>% 
  group_by(anio) %>% 
  summarise(precio_medio= mean(precio_unidad), na.rm = TRUE)

ggplot(precio_medio_anual, aes(x = anio, y = precio_medio)) +
  geom_line() + 
  geom_point()





precio_medio_anual <- menstru_full %>% 
  group_by(anio, Categoría) %>% 
  summarise(precio_medio= mean(precio_unidad), na.rm = TRUE)

ggplot(precio_medio_anual, aes(x = anio, y = precio_medio, color = Categoría)) +
  geom_line() + 
  geom_point()




precio_medio_anual <- menstru_full %>% 
  group_by(anio, Region) %>% 
  summarise(precio_medio= mean(precio_unidad), na.rm = TRUE)

ggplot(precio_medio_anual, aes(x = anio, y = precio_medio, color = Region)) +
  geom_line() + 
  geom_point()




precio_medio_anual <- menstru_full %>% 
  group_by(anio) %>% 
  summarise(precio_medio= mean(precio_unidad), na.rm = TRUE)

ggplot(precio_medio_anual, aes(x = anio, y = precio_medio)) +
  geom_line() + 
  geom_point() +
  labs(title= "Evolución de precios medios unitarios de los productos menstruales, en general",
       x = "Año",
       y = "Precio medio unitario") 




precio_medio_anual <- menstru_full %>% 
  group_by(anio) %>% 
  summarise(precio_medio= mean(precio_unidad), na.rm = TRUE)

ggplot(precio_medio_anual, aes(x = anio, y = precio_medio)) +
  geom_line() + 
  geom_point() +
  labs(title= "Evolución de precios medios unitarios de los productos menstruales, en general",
       x = "Año",
       y = "Precio medio unitario") +
  theme_minimal()





#ejercicio con %>% 

menstru_full %>% 
    group_by(anio) %>% 
    summarise(precio_medio = mean(precio_unidad), na.rm = TRUE) %>% 
    ggplot(aes (x = anio, y = precio_medio)) +
    geom_line()

  #en caso de necesitar desagrupar datos dentro de summarise: .groups = "drop"