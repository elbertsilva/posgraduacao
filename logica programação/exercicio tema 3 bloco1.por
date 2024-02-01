programa {
	funcao inicio() {
		real vclasse[10]
		inteiro nota_acima=0, x=0
		real soma=0.0, media=0.0
		enquanto(x<=9){
			leia(vclasse[x])
			soma = soma + vclasse[x]
			x = x+1
		}
		media = soma/10
		x=0
		enquanto(x<=9) {
			se(vclasse[x]>media) {
				nota_acima = nota_acima + 1
			}
			x++
		}
		escreva("Notas acima da média:",nota_acima)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 290; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */