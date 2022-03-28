#________RECODIFICACION DE VARIABLES___________

# Se trabaja con la matriz "escuela.xslx"

# 1.- Importacion de la matriz 


#------------------------------------------
#    Exploracion de la matriz
#------------------------------------------
dim(Escuela_1_)
str(Escuela_1_)
summary(Escuela_1_)


#-------------------------------------------
#      Configuracion de variables
#--------------------------------------------
Escuela_1_$grupo<-factor(Escuela_1_$grupo,
                          levels = c("A","B","C"))
summary(Escuela_1_)

Escuela_1_$genero

Escuela_1_$genero<-factor(Escuela_1_$genero,
                   levels = c("Femenino","Masculino"))

Escuela_1_$Matematicas<-factor(Escuela_1_$Matematicas,
                          levels = c("5","6","8","9","10"))
Escuela_1_$Español

Escuela_1_$Español<-factor(Escuela_1_$Español,
                               levels = c("6","7","8","9","10"))
summary(Escuela_1_)

Escuela_1_$Ciencias<-factor(Escuela_1_$Ciencias,
                           levels = c("7","8","9","10"))

Escuela_1_$Geografia<-factor(Escuela_1_$Geografia,
                            levels = c("6","7","8","9","10"))
summary(Escuela_1_)

summary
View(Escuela_1_)
#------------------------------------
install.packages("ggplot2")
#-------------------------------
library(ggplot2)
#-------------------------------
#boxplot
#--------------------------------

# 1.- Creación de un vector de color
color=c("lightsalmon2","lightsteelblue1","darkseagreen", "lavenderblush3")

# 2.- Creacion del grafico

BX<-ggplot(Escuela, aes(x=genero, y=Matematicas))+
  geom_boxplot(fill=color)+
  ggtitle("Boxplot")+
  xlab("Género")+
  ylab("Matemáticas")+
  theme_bw()

# 3.- Visualización del boxplot
BX

#El boxplot no saldrá, porque se necesitaría que matemáticas 
#fuera una etiqueta cuantitativa

#--------------------------------
#Generación de gráfico de barras
#--------------------------------

# 1.- Creación de un vector de color
color=c("darkseagreen", "lavenderblush3")

# 2.- Creación del gráfico
GB1<-ggplot(Escuela_1_, aes(x=genero))+
  geom_bar(colour= "black", fill=color)+
  ggtitle("Gráfico de Barras")+
  xlab("Género")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualizacion del grafico
GB1

#------------------------------
#Calificaciones de matemáticas
#------------------------------

# 1.- Creación de un vector de color
color=c("darkseagreen", "lavenderblush3","cyan","blueviolet","gold")

# 2.- Creación del gráfico
GB2<-ggplot(Escuela_1_, aes(x=Matematicas))+
  geom_bar(colour= "black", fill=color)+
  ggtitle("Gráfico de Barras")+
  xlab("Matemáticas")+
  ylab("Frecuencias")+
  theme_minimal()

# 3.- Visualizacion del grafico
GB2

#----------------------------
#Niveles de desempeño
#----------------------------
