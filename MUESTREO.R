#MUESTREO ALEATORIO SIMPLE
  
#Generar números aleatorios para una muestra de 61 personas en una 
#población de 73 alumnas/os del 5to semestre de la LEP BENV. Confiabilidad del 95% y 5% de error.
#x= del 1 al 73, que corresponde a la población.
#side= 61, que corresponde al tamaño de la muestra.

#En este link se calculó la muestra.
#<https://www.macorr.com/sample-size-calculator.htm>
  
#Ejemplo 1
sample(1:73, 61, replace=FALSE)

#Ejemplo 2
sample(1:73, 61, replace=FALSE)

#Ejemplo 3
sample(1:73, 61, replace=TRUE)

#Ejercicios
  
#1.1- Calcula el tamaño de muestra para una población de 
#83 alumnas y alumnos que se encuentran en primer grado
#de la Licenciatura en Educación Primaria de la BENV.

#La muestra es de 68 alumnas/alumnos.



#1.2.- Una vez que obtengas el tamaño de la muestra, 
#selecciona el número de lista de las personas que formarán
#parte de la muestra.

#Ejemplo
sample(1:83, 68, replace=FALSE)

#1.3.- Crea un vector llamado muestra con los números de 
#lista de las personas que forman parte de la muestra.

#Forma larga: copiar y pegar y despúés poner
#entre de cada número las comas.

muestra<-c(69, 75, 50, 47, 38, 78, 5, 70, 18, 61, 23, 22, 76, 45, 24, 3, 6, 64, 16, 30, 7, 77, 74, 62, 82, 44, 56, 49, 27, 53, 42, 68,
           29, 14, 72, 71, 65, 83, 63, 8, 41, 67, 81, 48, 21, 26, 4, 15, 80, 79, 34, 43, 57, 20, 28, 19, 1, 11, 25, 35, 46,  9, 12, 40,
           51, 2, 37, 58)

#Forma corta: copiar y pegar la función muestra.

muestra2<-sample(1:83, 68, replace=FALSE)
muestra2

#MUESTREO ESTRATIFICADO

#Matrícula de la escuela: 328

#Alumnos de primero: 47
#La muestra de primero es de 42

Primero<-sample(1:47, 42, replace=FALSE)
Primero

#Alumnos de segundo: 58
#La muestra de segundo es de 51

Segundo<-sample(1:58, 51, replace=FALSE)
Segundo

#Alumnos de tercero: 51
#La muestra de tercero es de 45

Tercero<-sample(1:51, 45, replace=FALSE)
Tercero

#Alumnos de cuarto: 51
#La muestra de cuarto es de 45

Cuarto<-sample(1:51, 45, replace=FALSE)
Cuarto

#Alumnos de quinto: 61
#La muestra de quinto es de 53

Quinto<-sample(1:51, 45, replace=FALSE)
Quinto


#Alumnos de sexto: 60
#La muestra de sexto es de 52

Sexto<-sample(1:51, 45, replace=FALSE)
Sexto

