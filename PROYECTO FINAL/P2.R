
#1.- Instalar paqueterias y abrir librerias
install.packages("tidytext")
library(tidytext)
install.packages("wordcloud")
library(wordcloud)
install.packages("dplyr")
library(dplyr)
install.packages("csv")
library(csv)

#2.- Se exporta la matriz de datos con extención .csv 
Textos1<-read_delim("P2.csv")
head(Textos1)

#3.- Se exporta la matriz con el diccionario de palabras que
# se va a utilizar para filtrar las palabras de forma manual.

stop_words<-read_delim("stop_words.csv")
View(stop_words)

#4.- limpieza y generacion de nuevo texto

word_freq1 <- Textos1 %>%
  unnest_tokens(output = word,
                input = Texto,
                token = "words",
                to_lower = TRUE,
                drop = TRUE,
                collapse = NULL,
                format = "text") %>%
  anti_join(stop_words, by = c("word" = "texto")) %>%
  count(word)
# devuelve la frecuencia de palabras

View(word_freq1)
# en este paso se tendra que modificar el archivo de
# stop_word para eliminar las palabras que no tienen
# significado de forma manual y se tiene que volver a
# activar todo el scrip desde el paso no.2

#5.- Creacion de nube de palabras
wordcloud(words = word_freq1$word,
          freq = word_freq1$n,
          min.freq = 1,
          max.words = 20,
          colors =  c("green","blue", "brown", "violet", "yellow"),
          random.order = F,
          random.color = F,
          scale = c(2 ,0.2),
          rot.per = 0.2)