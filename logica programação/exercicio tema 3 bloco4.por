// escreva um algoritmo que leia uma matriz 4x3.Em seguida, receba um novo valor do usuáro e verifique se este valor encontra na matriz.
// caso o valor se encontre na matriz, escreva a mensagem "o valor se encontra na matriz". Caso contrário, escreva a mensagem "o valor NAO se encontra na matriz.

programa
{
	funcao inicio()
	{
		inteiro numeros[4][3] //4 linhas e 3 colunas
		inteiro buscar
		logico achou

		para(inteiro i=0; i<=3; i++) {
			para(inteiro j=0; j<=2; j++) {
				escreva("Digite um valor para a posicao ",i,",",j,":")
				leia(numeros[i][j])
				escreva("\n")
				
			}
		}
		escreva("Digite um valor a ser encontrado: ")
		leia (buscar)
		achou = falso
		para(inteiro i=0; i<=3; i++) {
			para(inteiro j=0; j<=2; j++) {
				se(numeros[i][j] == buscar) {
					achou = verdadeiro
				}
			}
		}
		se(achou==verdadeiro) {
			escreva("O numero esta na matriz")
		}
		senao {
			escreva("O numero NAO esta na matriz")
		}
	}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 942; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */