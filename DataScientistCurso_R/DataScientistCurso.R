#---------------------------------------------------------------------------------------
#            Amostragem - amostra aleatoria simples

library(datasets)
data(iris)
summary(iris)
dim(iris)

# Criar um modelo, separando os dados do dataset IRIS em dois conjuntos  
# Passos 
# 1 - Gerar 150 numeros aleátorios, que poderam ser 0 ou 1 gerar 150 numeros aleatorios
# 2 - Usar esses numeros aleatorios e divilos por numeros aleatorios

# Função sample é composta por 4 parametros, onde o primeiro parametro indica de onde ele vai buscar a amostra, 
# neste caso ele ira escolher apenas 0 ou 1, o segundo parametro indica o tamanho da amostra, o terceiro(replace) 
# indica que sera uma amostra com reposição e por ultimo o vetor de probabilidade indicando q cada numero tera 50% 
# de chance de ser escolhido.
 
amostra = sample(c(0,1),150,replace = TRUE, prob = c(0.5,0.5))

teste = iris[amostra,]
length(teste$Sepal.Length==0)
teste

# Total da Amostra que é igual a 1 
length(amostra[amostra==1])

# Total da Amostra que é igual a 0
length(amostra[amostra==0])

# Repetir um experimento
# Cria uma semente de aleatoridade que permite repetir o experimento
set.seed(2345)
sample(c(100),1)

# Amostragem - amostra estratificada

summary(iris)
library(sampling)

# Gerar Estrato
amostrairis2 = strata(iris,c("Species"), size = c(25, 25, 25), method = "srswor")

#ver estrato
amostrairis2

# Amostragem - amostra estratificada com proporção de elementos
summary(infert)

# Numero de linhas 
length(infert$education)

# Numero linhas de 0 a 5 anos, 6 a 11 anos e acima de 12 anos.  
for(i in {unique(infert$education)}) 
  print(paste(i, length(infert[infert==i]), sep = ": "))


# Com base da investigação inicial, vamos gerar uma amostra com 100 elementos
# Cálculo "total por faixa de idade/total de elementos * 100"


for(i in {unique(infert$education)})
  y = append(y, paste(i, ": ", 
          round(length(infert[infert==i]) / length(infert$education) * 100)))
print(y)

#            Amostragem - Sistematica 
#install.packages("TeachingSampling")
library(TeachingSampling)

amostra = S.SY(150,10)
amostra

amostrairis = iris[amostra,]
amostrairis

#---------------------------------------------------------------------------------------
#              Medidas de centralidade e variabilidade

# Para realizarmos os testes vamos criar a variavel jogadores, com os msm sálarios da 
# imagens. 

jogadores = c(40000, 18000, 12000, 250000, 30000, 140000, 300000, 40000, 800000)

# Calcula a média
mean(jogadores)

# Calcula a mediana
median(jogadores)

# Calcula os Quartis 
quartis = quantile(jogadores)

#ver os quartis 
quartis

#ver o terceiro quartil 
quartis[4]

# Calcula o Desvio Padrão
sd(jogadores)

# Mostra o resultado da variável 
summary(jogadores)
summary(jogadores)

# Reconhecimento de imagem 
# http://neylsoncrepalde.github.io/2017-02-21-reconhecimento-facial/

  