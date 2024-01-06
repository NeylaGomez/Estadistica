#representar graficamente un texto, para dar una idea de lo que contiene
#se dibuja las palabaras mas frecuentes, + palabras-> + grande el texto

#instalamos todos los paquetes que necesitamos
install.packages("tm")
install.packages("NLP")
install.packages("SnowballC")
install.packages("wordcloud2")
install.packages("RColorBrewer")

#cargamos las librerias correspondientes
library(tm)
library(NLP)
library(SnowballC)
library(RColorBrewer)
library(wordcloud)

#PREGUNTA 1
#Que palabras hay con mayor frecuencia en las respuestas a la pregunta 1

texto <- readLines(file.choose(), encoding = "UTF-8")
texto = iconv(texto, from= "UTF-8", to="latin1")
texto = Corpus(VectorSource(texto))

########### LIMPIAMOS NUESTRO TEXTO CON EL COMANDO tm_map

#ponemos todos los datos a minuscula (A!=a)
discurso=tm_map(texto, tolower)
#quitamos los espacios en blanco
discurso =tm_map(discurso, stripWhitespace)
#quitamos la puntuacion
discurso = tm_map(discurso, removePunctuation)
#quitamos los numeros
discurso = tm_map(discurso, removeNumbers)

#mostramos palabras vacias y genericas
stopwords("spanish")
#quitamos palabras genericas
discurso=tm_map(discurso, removeWords,stopwords("spanish"))

discurso=tm_map(discurso, removeWords, c("osea", "través", "pues", "entonces", "ejemplo", "campo", "formativo")
                
#tambien podemos tener nuestra propia lista de palabras a quitar
                
############### DATA FRAME DE PALABRAS CON SU FRECUENCIA
                
#Creamos matriz de letras
letras= TermDocumentMatrix(discurso)
findFreqTerms(letras, lowfreq=5)
matrix=as.matrix(letras)
                
#lo ordenamos y sumamos las letras de nuestra matriz
vector <- sort(rowSums(matrix),decreasing=TRUE)
#creamos la data con las palabras y su frecuencia
dataletras <- data.frame(word= names(vector),frequencia=vector)
# lo nombra y le da formato de data.frame
                
                
################ GRAFICAMOS FRECUENCIA DE LAS PALABRAS
                
barplot(dataletras[1:10,]$freq, las = 2, names.arg = dataletras[1:10,]$word,
      col ="lightblue", main ="PALABRAS MÁS FRECUENTES", ylab = "Frecuencia de palabras")
                
                
############ GRAFICAMOS LA NUBE DE PALABRAS
wordcloud(words = dataletras$word, freq = dataletras$freq, min.freq = 1, colors=brewer.pal (8, "Dark2"))
#en el centro la palabra mas importante, 
wordcloud(words = dataletras$word, freq = dataletras$freq, min.freq = 2, random.order=FALSE, shape= "circle", rot.per=0.8, 
                          colors=brewer.pal(8, "Dark2"))
                
#PREGUNTA 1
#Que palabras hay con mayor frecuencia en las respuestas a la pregunta 1

texto <- readLines(file.choose(), encoding = "UTF-8")
texto = iconv(texto, from= "UTF-8", to="latin1")
texto = Corpus(VectorSource(texto))

########### LIMPIAMOS NUESTRO TEXTO CON EL COMANDO tm_map

#ponemos todos los datos a minuscula (A!=a)
discurso=tm_map(texto, tolower)
#quitamos los espacios en blanco
discurso =tm_map(discurso, stripWhitespace)
#quitamos la puntuacion
discurso = tm_map(discurso, removePunctuation)
#quitamos los numeros
discurso = tm_map(discurso, removeNumbers)

#mostramos palabras vacias y genericas
stopwords("spanish")
#quitamos palabras genericas
discurso=tm_map(discurso, removeWords,stopwords("spanish"))

discurso=tm_map(discurso, removeWords, c("osea", "través", "pues", "entonces", "ejemplo", "campo", "formativo")
                
#tambien podemos tener nuestra propia lista de palabras a quitar
                
############### DATA FRAME DE PALABRAS CON SU FRECUENCIA
                
#Creamos matriz de letras
letras= TermDocumentMatrix(discurso)
findFreqTerms(letras, lowfreq=5)
matrix=as.matrix(letras)
                
#lo ordenamos y sumamos las letras de nuestra matriz
vector <- sort(rowSums(matrix),decreasing=TRUE)
#creamos la data con las palabras y su frecuencia
dataletras <- data.frame(word= names(vector),frequencia=vector)
# lo nombra y le da formato de data.frame
                
                
################ GRAFICAMOS FRECUENCIA DE LAS PALABRAS
                
barplot(dataletras[1:10,]$freq, las = 2, names.arg = dataletras[1:10,]$word,
      col ="lightblue", main ="PALABRAS MÁS FRECUENTES", ylab = "Frecuencia de palabras")
                
                
############ GRAFICAMOS LA NUBE DE PALABRAS
wordcloud(words = dataletras$word, freq = dataletras$freq, min.freq = 1, colors=brewer.pal (8, "Dark2"))
#en el centro la palabra mas importante, 
wordcloud(words = dataletras$word, freq = dataletras$freq, min.freq = 2, random.order=FALSE, shape= "circle", rot.per=0.8, 
                          colors=brewer.pal(8, "Dark2"))
