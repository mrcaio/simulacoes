# Comando “for”

O comando *for*, estudado na ultima aula com o Scilab, possui a seguinte estrutura:
```
for variável = expressão
	Grupo de comandos
	end
```

## Questões

1.  Utilize a estrutura *for* e desenvolva um programa Scilab para fazer a análise estatística de um lote com 14 resistores cerâmicos de 10 ohms, cujos resistências medidas são dadas a seguir:<br/>
`
Resistências= [ 10.34 10.42 10.25 9.82 10.33 9.66 10.27 10.25 10.30 9.50 9.55 9.40 10.00 9.34 ]
`<br/>

    a. [Calcule o valor médio](https://github.com/mrcaio/simulacaoaplicada/blob/main/simulacaoaplicadaeletroeletronica/comando_for/1a.m)

    ![Rmédio](https://github.com/mrcaio/simulacaoaplicada/blob/main/simulacaoaplicadaeletroeletronica/comando_for/img/1a.png?raw=true)

    9.9592857

    b. [Calcule o desvio padrão usando](https://github.com/mrcaio/simulacaoaplicada/blob/main/simulacaoaplicadaeletroeletronica/comando_for/1b.m)

    ![Desviopadrão](https://github.com/mrcaio/simulacaoaplicada/blob/main/simulacaoaplicadaeletroeletronica/comando_for/img/1b.png?raw=true)

    0.3982358

2.  [Teste seu programa com um lote de 100 resistores. Gere os valores das medidas com a seguinte linha de comando:](https://github.com/mrcaio/simulacaoaplicada/blob/main/simulacaoaplicadaeletroeletronica/comando_for/2.m)
<br/>
`R=(rand(1,100)-0.5) + 10;`

0.3006370
