programa 
{
	funcao inicio()
	{
		inteiro numero, multiplo
		escreva("Digite um numero:")
		leia(numero)
		limpa()
		se (numero % 5 == 0)
		{
			escreva("o numero ", numero, " é multiplo de 5")
		}
		senao
		{
			escreva("o numero ", numero, " não é multiplo de 5")
		}
		escreva("\n")
	}
}
	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 292; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */