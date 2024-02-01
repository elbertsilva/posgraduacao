programa
{
	funcao inicio() {
		inteiro v1,v2,v3
		real m
		escreva ("Entre com os três valores:\n")
		leia(v1,v2,v3)
		m = media(v1,v2,v3)
		escreva("A media entre os tres valores é: ",m)
	}
	funcao real media(inteiro m1,inteiro m2,inteiro m3) {
		real media
		media = (m1 + m2 + m3)/3.0
		retorne media
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 310; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */