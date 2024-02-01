programa {
	funcao inicio(){
		caracter tipo 
		inteiro con, con_t, con_b, con_r
		real por_t, por_b, por_r

		con = 0
		con_t = 0
		con_b = 0
		con_r = 0

		limpa()

		faca{
			leia(tipo)
			escolha (tipo) {
				caso 't':
				con_t++
				pare
				caso 'b':
				con_b++
				pare
				caso 'r':
				con_r++
				pare
			}
			con++
		} enquanto (tipo !='f')
			con = con-1
			se (con>0) {
				por_t = con_t*100/con
				por_b = con_b*100/con
				por_r = con_r*100/con
				escreva("% de tintos =",por_t)
				escreva("\n de brancos =", por_b)
				escreva("\n de rose =", por_r)
			} 
			senao {
				escreva("Sem entrada de vinhos")
			}
	} //fim do bloco inicio
}// fim algoritmo

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 570; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */