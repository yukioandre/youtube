# INTRODUCAO AO R (NAO USEM CARACTERES ESPECIAIS E ACENTOS)

# 1 - OPERA????ES ARITM??TICAS
# Soma 
10+4

# subtra????o
3-2

# multiplica????o
3*2

# divis??o
4/2

# exponencia????o
3**2

# resto de divis??o
3%%2
5%%3

# raiz ?? basicamente exponencia????o tamb??m
9**(1/2)

# 2 - CRIANOD OBJETOS
# utilizando sinal de igual ou a flecha

x = 10
x <- 10

# a flecha vale para outra dire????o
10 -> w
w

# atribui resultado da opera????o
x = 10+5
x

# guarda lista (que precisa usar c())
x = c(10,10,20)
x

# lista de textos
x = c("Andre", "Bruna", "Carlos")

# acessa objetos da lista
x[1]

# comandos na mesma linha
x=10; y=5;x*y

# lista objetos na memoria (tudo que vc ja criou no terminal)
ls()

# lista objetos com certo padrao
ls(pat = "d") # objetos que possuem m no nome
ls(pat = "^d") # objetos que possuem m no inicio

# deletar objetos na memoria
rm(x) # deleta x
rm(list=ls(pat="^d"))

# para pedir ajuda
?rnorm 
help(rnorm)

# voltando aos objetos... a gente tem algumas defini????es para o tipo de objeto
# essa parte as vezes confunde a galera, mas vc vai ver que ?? quase a mesma coisa
# tem algumas separa????es para defini????es. 
# class, typeof, mode
# class ?? a classe, o tipo de objeto do ponto de vista de programa????o orientada a objeto
# typeof ?? o tipo de acordo com o ponto de vista do R
# mode seria meio que o tipo b??sico. ?? o tipo, mas com uma certa simplificada,
# no fundo ?? quase tudo a mesma coisa. vamos ver na pr??tica:
x = 10; class(x); mode(x); typeof(x)
y = TRUE; class(y); mode(y); typeof(y)
z = "texto"; class(z); mode(z); typeof(z)
w = 1i; class(w); mode(w); typeof(w)
v = 1:5; class(v); mode(v); typeof(v)


# Bom, ali foram os tipos pensando no objeto em si. Mas tem o tipo no sentido de estrutura, de agrupamento
# Aqui a gente tem os tipos: vetor, matrix, dataframe, list

# vetor: lista de elementos. Pode ser atomic (do mesmo tipo) ou list (diferentes tipos)
nomes = c("Marcos", "Pedro", "Rosa") # ?? um vetor
is.atomic(nomes)
is.list(nomes)

# matrix: ?? um tipo especial de vetor, ?? um vetor com linhas e colunas como atributos
m <- matrix(c(1:4), nrow=2, ncol=2)
is.matrix(m)

# lista: ?? um vetor que possui v??rios tipos de elementos
l = list(nome="Marcos", idade=30, uf="SP")
l$nome
l['nome']
is.list(l)

# dataframe: ?? uma tabela. Lista de vetores de mesmo comprimento
nome = c("Marcos", "Pedro", "Rosa")
idade = c(30, 25, 28)
aprovado = c(TRUE, TRUE, FALSE)
df = data.frame(nome, idade, aprovado)
is.data.frame(df)
is.matrix(df)

# time series
ts(1:10, start = 1959)
ts(1:10, frequency = 12, start = c(1959, 2))

# Importando dados
# getwd() para pegar endereco atual
iris = read.table('iris.csv')
head(iris)
tail(iris)
# sintaxe completa: read.table(file, header = FALSE, sep = "", quote = "\"???", dec = ".",
# row.names, col.names, as.is = FALSE, na.strings = "NA", colClasses = NA, nrows = -1,
# skip = 0, check.names = TRUE, fill = !blank.lines.skip, strip.white = FALSE, blank.lines.skip = TRUE, 
# comment.char = "#")

# salvar os dados
write.table(head(iris), file="iris_teste.csv")

# carregar pacote
install.packages("ggplot2")
library("ggplot2")

# a?? ?? s?? usar as funcoes
ggplot(iris, aes(x=Sepal.Width, y=Sepal.Length )) + geom_point(aes(col=Species), size=1)
