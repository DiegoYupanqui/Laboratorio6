
DataFrame<-data.frame(a=c(1:4),b=letters[1:4])

DataFrame2<-data.frame(a=c(5:8),b=letters[5:8])

#EJERCICIO 1:

f1<- factor(letters)
levels(f1)<-rev(levels(f1))
f1 #Se modifica el orden de los elementos del factor segun el orden de los elementos de los niveles

#EJERCICIO 2:

x1<-array(1:5, c(1,1,5))
x2<-array(1:5, c(1,5,1))
x3<-array(1:5, c(5,1,1))
x1 # es una matriz de 3 dimensiones con 5 elementos en su tercera dimension y cada uno de ellos tiene una matriz de 1x1 
x2 # es una matriz de 1 fila y 5 columnas
x3 # es una matriz de 5 filas y 1 columna

#EJERCICIO 3:

attributes(DataFrame) # Tiene como atributos los nombres, nombres de filas, clase

#EJERCICIO 4:

is.matrix(DataFrame2) # Resulta FALSE

#EJERCICIO 5:

DataFrame3<-data.frame(a=c(1),b=c(2))
DataFrame3 # Es un data frame con 0 filas y 0 columnas

#EJERCICIO 6:

dim(c(1:10))      # Devuelve NULL al aplicarse a un vector atomico, en general devuelve un vector con el valor de las dimensiones
dim(x1)           # del objeto
dim(DataFrame2)

#EJERCICIO 7:

X<-matrix(1:9, ncol = 3)
is.matrix(X)
is.array(X)         # Devuelve TRUE ya que una matriz es un caso particular de array con 2 dimensiones

#EJERCICIO 8:

is.vector()  # devuelve TRUE si el objeto es un vector sin mas atributos que los nombres
is.numeric() # devuelve TRUE si el objeto es de tipo integer o si es de tipo double
is.list()    # devuelve TRUE si el objecto es una lista
is.character # devuelve TRUE si el objeto es de tipo character

#EJERCICIO 9:

FALSE > -1   # Devido a la coercion de datos a una forma mas flexible, FALSE coerciona al tipo integer y se vuelve 0
"one"<2      # "one" no coerciona al tipo integer como 1 

#EJERCICIO 10:

c(1, FALSE)           # Vector atomico (1,0) de tipo integer
c("a", 1)             # Vector atomico ("a","1") de tipo character
c(list(1), "a")       # Lista con 2 elementos: 1, "a"
c(TRUE, 1L)           # Vector atomico (1,1) de tipo integer
