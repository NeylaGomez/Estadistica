# COHEFICIENTE DE CORRELACIÓN DE PEARSON 

#PARA DATOS CON DISTRIBUCIÓN NORMAL. 

#ÁREA: ESTADÍSTICA PARAMÉTRICA

#UTILIZANDO LA MATRIZ "PENGüINS"


#1. Instalar paquetería

install.packages("readxl")

#1.1 Abre la paquetería

library("readxl")

#2. Exportación de la matriz de datos.

penguins<-read_excel("penguins.xlsx")

#2.1 Nombre de las columnas

#Para conocer el nombre de las columnas de nuestra base de datos, 
#se ocupa:

colnames(penguins)

#3. Exploración de la matriz
  
#  3.1 Dimensión de la matriz
  
#  Se utiliza el siguiente comando para saber 
#la dimensión de matriz: 
  
dim(penguins)

#4. Tipo de variables

#Para observar las variables y el tipo que tenemos, 
#ocupamos:

str(penguins)

#5. En busca de datos perdidos

#Buscamos si se tienen datos perdidos en el cocumento con:

anyNA(penguins)

# PARA SACAR EL COHEFICIENTE DE CORRELACIÓN DE PEARSON 

#1. Para seleccionar las variables que vallamos a correlacionar 
#ocupamos: 
  
str(penguins)

penguins$especie

#2. Se seleccionan las filas 1 a la 61 que corresponden
#a la especie Adeli y las variables cuantitativas
  

adeli<-penguins[1:61, 4:7]

#3. Visualización  de la matriz

#Para poder visualizar nuestro objeto 

adeli

#4. Generación del gráfico de correlación
  
plot(adeli)

#5. Cálculo de la correlación de Parson
  
cor(adeli)


#6. Organización visual de la tabla de correlaciones
  
#6.1 Se genera un nuevo objepto con el nombre de pearson,
#es decir, 

pearson<-(adeli)


#6.2 Se abre la librería knitr

library(knitr)


#6.3 Se utiliza la función kable


kable(pearson)

# COHEFICIENTE DE CORRELACIÓN DE SPEARMAN

#PARA DATOS CON DISTRIBUCIÓN NO NORMAL

#ÁREA: ESTADÍSTICA NO PARAMÉTRICA

#Se utiliza la matriz marvel_dc.csv

#1. Exportación de la matriz de datos.

marvel_dc<-read_excel("marvel_dc.xlsx")

#2. Exploración de la matriz

#2.1 Dimensión de la matriz

#Se utiliza el siguiente comando para saber
#la dimensión de la matriz:
 
dim(marvel_dc)

#2.2 En busca de datos perdidos

#Buscamos si tenemos datos perdidos con:

anyNA(marvel_dc)

#3. Tipo de variables 

#Para identificar las variables cuantitativas

str(marvel_dc)

#4. Para saber el nombre y posición de la varriable ocupamos:
 
colnames(marvel_dc)

#5. Seleccionamos las variables:
#  rate, minutos, budget y gross.worldwide con:

#Nota: Elegimos columnas nuevas, debido a que la número 4 y la 6 son carácteres y necesitamos utilizar numéricas.

#Ocuparemos las variables:
#rate, metascore, gross USA y gross Worldwide

marvel<-marvel_dc[,c(4,5,10,11)]

#6. Verificar que el nombre de las variables 
#esten correctas, utilizando:

colnames(marvel)

#7. Realizar un plot de exploración con:
 
plot(marvel)

#8. Realizar la correlación de Spearman con:

spearman<-cor(marvel, method = "spearman")

#9. Visualizar el objeto

spearman

#9.2 Se abre la libreria knitr

library(knitr)

#10. Se utiliza la función kable para tabla en
#formato markdown.

kable(spearman)
