programa
{
	funcao inicio() {
		real variavel=0.0, salario, total=0.0
		caracter tipo
		para (inteiro i=0; i<=4; i++) {
			escreva("\n Tipo do funcionario (h,f,c)?")
			leia(tipo)
			se(tipo == 'h') {
				escreva("Quantidade de horas?")
				leia(variavel)
			}
			se(tipo=='c') {
				escreva("Valor das vendas")
				leia(variavel)
			}
			salario = calcula_salario(tipo,variavel)
			escreva("\nSalario = R$",salario)
			total = total+salario
		}
		escreva("\nSalario de  todos: RS",total)
	}
	funcao real calcula_salario(caracter tipo, real variavel) {
		real salario
		escolha (tipo) { 
			caso 'h':
			salario = 50.0 * variavel
			pare
			caso 'c':
			salario = 600.0 + 0.05 * variavel
			pare
			caso contrario:
			salario = 1212.0
			pare
	}
	retorne salario
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 587; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */