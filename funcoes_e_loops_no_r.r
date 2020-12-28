# 1) FUNCOES
# 1.1) Sintaxe da Funcao
nome_da_funcao = function(parametro_1, parametro_2, ..., parametro_n){
  tarefa_1
  tarefa_2
  .
  .
  .
  tarefa_n
  return(output)
}

# 1.2) Funcao soma de numeros
soma  = function(a, b){
  return(a+b)
}

# testando a funcao soma
soma(2, 3)
soma(a=2, b=3)
soma(b=10, a=5)
soma(a=1)

# 1.3) Funcao com parametro default
multiplicacao = function(a, b=1){
  return(a*b)
}

multiplicacao(2, 4)
multiplicacao(1)

# 1.4) Funcao de conversao de fahrenheit para celsius
fahrenheit_to_celsius = function(temp_F){
  temp_C = (temp_F-32)*5/9
  return(temp_C)
}

fahrenheit_to_celsius(32)

# especificar diretorio em que vc vai trabalhar
setwd("~/Google Drive/EstatSite/Videos_Youtube/Codigos")

# 1.5) Aplicando funcao numa tabela: contagem de missing
german_credit = read.table('german_credit_data.csv', header=TRUE, sep=',', dec='.')
head(german_credit)

miss = function(column){
  sum(is.na(column))/length(column) * 100
}

apply(german_credit, 2, miss)

# 2) LOOPS
# 2.1) Com for
for(i in 1:5){
  print(i)
}

for(i in c(10, 20, 30)){
  print(i)
}

X = c(10, 15, 19, 23, 23.5, 24, 24.9, 27, 29.2)
for(i in X){
  preco_final = (1-i/100)*300
  print(preco_final)
}

for(x in c("Adriana", "Bruna", "Carlos", "Eduardo")){
  print(substr(x, 1, 1))
}

# 2.2) While
while(condicao){
  tarefa_1
  tarefa_2
  .
  .
  .
  tarefa_n
}

x=0
while(x < 5){
  x = x+1
  print(x)
}

x=100
meses = 0
while(x < 300){
  x = x*1.02
  meses = meses+1
}

# 2.3) Repeat
x = 0
repeat{
  print(x)
  x = x+1
  if(x > 10){break}
}

# EXEMPLO FINAL: FUNCAO + LOOP
fib = function(n){
  
  # vetor para armazenar a sequencia
  fib = numeric(n)
  
  # valores iniciais
  fib[1] = 0
  fib[2] = 1
  
  for(i in 3:n){
    fib[i] = fib[i-1] + fib[i-2]
  }
  
  return(fib)
  
}

fib(10)
