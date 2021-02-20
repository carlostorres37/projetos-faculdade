#define _CRT_SECURE_NO_WARNINGS
#include <Windows.h>
#include <stdio.h>
#include <stdlib.h>

// --------------------- VAR DECLARATION ---------------------
int statesCount;

int AlphabetCount;
char *Alphabet = NULL;

char ***TransitionFunction = NULL;

int finalStatesCount;
char *finalStates = NULL;

char word[100];
// -----------------------------------------------------------

// ----------------- FUNCTION DECLARATION --------------------
void printHeaderMessage();
void printWelcomeMessage();

void initAutomatonStates(int* statesCountRef);
void printAutomatonStatesMessage();
void printAutomatonStatesFormalDescription(const int statesCount);

void initAutomatonAlphabet(char** alphabetRef, int* alphabetCountRef);
void printAutomatonAlphabetMessage();
void printAutomatonAlphabetFormalDescription(char** alphabetRef, int* alphabetCountRef);

void initTransitionFunc(char** transitionFuncRef, const int statesCountRef, const int alphabetCountRef);
void initTransitionFunction(char** transitionFuncRef, const int statesCountRef, const int alphabetCountRef);
void printTransitionFuncInitTable(const char** transitionFuncRef, const int statesCountRef, const int alphabetCountRef);
void printTransitionFuncInitMessage();
char* createLineSeparator(const int alphabetCountRef, const int dashesPerColumn);


void initAutomatonFinalStates(char** finalStatesRef, int* finalStatesCountRef);
void printAutomatonFinalStatesMessage();
void printAutomatonFinalStatesFormal(char** finalStatesRef, int* finalStatesCountRef);

int getNextState(int charIndex, char word[], int _currentState, int _alphabetCount, char* _alphabet, char** _transitionFunction);
void getWordToScan(char* word);
void removeLineBreaksFromWordToScan(char* word);
// -----------------------------------------------------------


int main()
{
	int i, currentState, final;

	SetConsoleOutputCP(1253); // Windows 1253 charset para imprimir simbolos gregos

	printWelcomeMessage();

	initAutomatonStates(&statesCount);
	initAutomatonAlphabet(&Alphabet, &AlphabetCount);

	TransitionFunction = malloc(sizeof(char*) * statesCount);

	initTransitionFunc(TransitionFunction, statesCount, AlphabetCount);
	initAutomatonFinalStates(&finalStates, &finalStatesCount);

	// -------------------- WORD TO SCAN --------------------
	do {
		i = currentState = 0;
		final = FALSE;

		getWordToScan(word);

		printf("\n");
		if (strcmp(word, "") != 0) {
			while (word[i] != '\0') {
				currentState = getNextState(i, word, currentState, AlphabetCount, Alphabet, TransitionFunction);
				if (currentState < 0) {
					break;
				}
				i++;
			}

			for (i = 0; i < finalStatesCount; i++)
				if (finalStates[i] == currentState + '0')
					final = TRUE;

			printf("\n\nA palavra %s e ", word);
			if (final)
				printf("VALIDA!\n");
			else
				printf("INVALIDA!\n");

			printf("\n\n-> Pressione ENTER para digitar outra palavra\n");
			printf("-> Para sair do programa, pressione ENTER e\n");
			printf("   digite: -1\n");

			getchar();
		}
	} while (strcmp(word, "") != 0);


	// ----------------- FREE DYNAMIC ALLOCATED MEMORY -----------------
	free(finalStates);
	for (i = 0; i < statesCount; i++) {
		free(TransitionFunction[i]);
	}
	free(TransitionFunction);
	free(Alphabet);
	// -----------------------------------------------------------------
}



void printHeaderMessage() {
	printf(" ----------------------------------------------\n");
	printf("|       Automato Finito Deterministico         |\n");
	printf("| Por       : Anton Lourenco Mazon Rosa Rangel |\n");
	printf("| Materia   : Compiladores                     |\n");
	printf("| Professor : Marco Xaves Valentim             |\n");
	printf(" ----------------------------------------------\n");
}

void printWelcomeMessage() {
	printHeaderMessage();

	printf("\n  Seja bem vindo ao compilador universal de\n");
	printf("    Automato Finito Deterministico (AFD)\n\n");

	printf(" ----------------------------------------------\n");
	printf("|              Fases do programa               |\n");
	printf(" ----------------------------------------------\n");
	printf("| Fase 1 - Descricao dos ESTADOS               |\n");
	printf("| Fase 2 - Descricao do ALFABETO               |\n");
	printf("| Fase 3 - Descricao da Funcao de Transicao    |\n");
	printf("| Fase 4 - Descricao dos ESTADOS FINAIS        |\n");
	printf("| Fase 5 - Insercao de PALAVRAS                |\n");
	printf(" ----------------------------------------------\n");

	printf("\n     Pressione ENTER para continuar");
	getchar();
}



void initAutomatonStates(int* statesCountRef) {
	int i;
	char confirmStates;

	do {
		printAutomatonStatesMessage();

		printf("Porfavor, insira a QUANTIDADE de estados: ");
		scanf("%d", statesCountRef);

		printAutomatonStatesFormalDescription(*statesCountRef);

		printf("O CONJUNTO DE ESTADOS esta correto?\n");
		printf("Confirmar (s/n): ");
		scanf(" %c", &confirmStates);

	} while (confirmStates != 's');
}

void printAutomatonStatesMessage() {
	system("cls");
	printHeaderMessage();

	printf(" ----------------------------------------------\n");
	printf("| Fase 1/5 - Descricao dos ESTADOS             |\n");
	printf(" ----------------------------------------------\n");

	printf("\nAntes de comercarmos a descricao dos estados\n");
	printf("precisamos saber a QUANTIDADE de estados\n");
	printf("que o AFD tem.\n");
	printf("Ex.: Q = { q0, q1, q2 }, tem QUANTIDADE = 3\n\n");
}

void printAutomatonStatesFormalDescription(const int statesCount) {
	int i;

	printf("\nQ = { ");
	for (i = 0; i < statesCount; i++) {
		printf("q%d", i);

		if (i < statesCount - 1)
			printf(", ");
	}

	printf(" }\n\n");
}



void initAutomatonAlphabet(char** alphabetRef, int* alphabetCountRef) {
	int i;
	char alphabetConfirm;
	do {
		free(*alphabetRef);

		printAutomatonAlphabetMessage();

		printf("Porfavor, insira a QUANTIDADE de simbolos: ");
		scanf("%d", alphabetCountRef);

		*alphabetRef = malloc(sizeof(char) * (*alphabetCountRef));

		printf("\n");
		for (i = 0; i < *alphabetCountRef; i++) {
			printf("%d\xB0 simbolo do alfabeto: ", i + 1);
			rewind(stdin);
			fgets(&(*alphabetRef)[i], 2, stdin);
		}

		printAutomatonAlphabetFormalDescription(alphabetRef, alphabetCountRef);

		printf("O alfabeto esta correto?\n");
		printf("Confirmar (s/n): ");
		scanf(" %c", &alphabetConfirm);
	} while (alphabetConfirm != 's');
}

void printAutomatonAlphabetMessage() {
	system("cls");
	printHeaderMessage();

	printf(" ----------------------------------------------\n");
	printf("| Fase 2/5 - Descricao do ALFABETO             |\n");
	printf(" ----------------------------------------------\n");

	printf("\nAntes de comercarmos a descricao do alfabeto\n");
	printf("precisamos saber a QUANTIDADE de simbolos\n");
	printf("que o alfabeto tem.\n\n");

	printf("Ex.: \xD3 = { a, b, c }, tem QUANTIDADE = 3\n\n");
}

void printAutomatonAlphabetFormalDescription(char** alphabetRef, int* alphabetCountRef) {
	int i;

	printf("\n\xD3 = { ");
	for (i = 0; i < *alphabetCountRef; i++) {
		if ((*alphabetRef)[i] == ' ')
			printf("\xE5");
		else
			printf("%c", (*alphabetRef)[i]);

		if (i < *alphabetCountRef - 1)
			printf(", ");
	}
	printf(" }\n\n");
}



void initTransitionFunc(char** transitionFuncRef, const int statesCountRef, const int alphabetCountRef) {
	int i, stateCounter, alphCounter;
	char transitionFuncConfirm;

	for (i = 0; i < statesCountRef; i++)
		transitionFuncRef[i] = malloc(sizeof(char*) * alphabetCountRef);

	do {
		printTransitionFuncInitMessage();
		initTransitionFunction(transitionFuncRef, statesCountRef, alphabetCountRef);
		printTransitionFuncInitTable(transitionFuncRef, statesCountRef, alphabetCountRef);

		printf("A funcao de transicao esta correta?\n");
		printf("Confirmar (s/n): ");
		scanf(" %c", &transitionFuncConfirm);
	} while (transitionFuncConfirm != 's');
}

void printTransitionFuncInitMessage() {
	system("cls");
	printHeaderMessage();

	printf(" ----------------------------------------------\n");
	printf("| Fase 3/5 - Descricao da Funcao de Transicao  |\n");
	printf(" ----------------------------------------------\n\n");

	printf("\nSeguindo uma abordagem estendida, vamos\n");
	printf("descrever a funcao de transicao.\n\n");

	printf("IMPORTANTE\n");
	printf("  -> Para \xE5 (palavra vazia) pode-se usar\n");
	printf("     o espaco em branco normalmente.\n");
	printf("  -> Para funcao de transicao nao definida\n");
	printf("     entre um estado e um simbolo, basta\n");
	printf("     apertar ENTER sem inserir um estado\n");

	printf("\nA formula e: (Q x \xD3) = Q\n\n");
}

void initTransitionFunction(char** transitionFuncRef, const int statesCountRef, const int alphabetCountRef) {
	int i, stateCounter, alphCounter;

	for (stateCounter = 0; stateCounter < statesCountRef; stateCounter++) {
		for (alphCounter = 0; alphCounter < alphabetCountRef; alphCounter++) {
			printf("\t(q%d, %c) = q", stateCounter, Alphabet[alphCounter]);
			rewind(stdin); // serve para retirar caracteres de nova linha do buffer de entrada
			fgets(&transitionFuncRef[stateCounter][alphCounter], 2, stdin);
		}
	}
}

void printTransitionFuncInitTable(const char** transitionFuncRef, const int statesCountRef, const int alphabetCountRef) {
	int stateCounter, alphCounter;
	char* tableLineSeparator = createLineSeparator(alphabetCountRef, 6);

	system("cls");
	printHeaderMessage();

	printf(" ----------------------------------------------\n");
	printf("| Fase 3/5 - Descricao da Funcao de Transicao  |\n");
	printf(" ----------------------------------------------\n\n");

	printf(" \xE4  ");
	for (alphCounter = 0; alphCounter < alphabetCountRef; alphCounter++) {
		if (Alphabet[alphCounter] == ' ')
			printf("|  \xE5  ");
		else
			printf("|  %c  ", Alphabet[alphCounter]);
	}
	printf("\n%s\n", tableLineSeparator);

	for (stateCounter = 0; stateCounter < statesCountRef; stateCounter++) {
		printf(" q%d ", stateCounter);
		for (alphCounter = 0; alphCounter < alphabetCountRef; alphCounter++) {
			if (transitionFuncRef[stateCounter][alphCounter] != '\n')
				printf("| q%c  ", transitionFuncRef[stateCounter][alphCounter]);
			else
				printf("| --- ");
		}
		printf("\n%s\n", tableLineSeparator);
	}
	printf("\n\n");

	free(tableLineSeparator);
}

char* createLineSeparator(const int alphabetCountRef, const int dashesPerColumn) {
	int i, totalDashesCount = dashesPerColumn * alphabetCountRef + dashesPerColumn;
	char* tableLineSeparator = malloc((sizeof(char) * totalDashesCount) + 1);

	for (i = 0; i < totalDashesCount; i++)
		tableLineSeparator[i] = '-';

	tableLineSeparator[i] = '\0';

	return tableLineSeparator;
}



void initAutomatonFinalStates(char** finalStatesRef, int* finalStatesCountRef) {
	int i;
	char finalStatesConfirm;

	do {
		free(*finalStatesRef);

		printAutomatonFinalStatesMessage();

		printf("Porfavor, insira a QUANTIDADE de estados finais: ");
		scanf("%d", finalStatesCountRef);

		*finalStatesRef = malloc(sizeof(char) * (*finalStatesCountRef));

		for (i = 0; i < *finalStatesCountRef; i++) {
			printf("%d\xB0 estado final: q", i + 1);
			rewind(stdin);
			fgets(&(*finalStatesRef)[i], 2, stdin);
		}

		printAutomatonFinalStatesFormal(finalStatesRef, finalStatesCountRef);

		printf("O conjunto de estados finais esta correto?\n");
		printf("Confirmar (s/n): ");
		scanf(" %c", &finalStatesConfirm);
	} while (finalStatesConfirm != 's');
}

void printAutomatonFinalStatesMessage() {
	system("cls");
	printHeaderMessage();

	printf(" ----------------------------------------------\n");
	printf("| Fase 4/5 - Descricao dos ESTADOS FINAIS      |\n");
	printf(" ----------------------------------------------\n");

	printf("\nAntes de comercarmos a descricao dos estados\n");
	printf("finais precisamos saber a QUANTIDADE de estados\n");
	printf("finais que o alfabeto tem.\n\n");

	printf("Ex.: F = { q1, q2, q3 }, tem QUANTIDADE = 3\n\n");
}

void printAutomatonFinalStatesFormal(char** finalStatesRef, int* finalStatesCountRef) {
	int i;

	printf("\nF = { ");
	for (i = 0; i < *finalStatesCountRef; i++) {
		printf("q%c", (*finalStatesRef)[i]);

		if (i < *finalStatesCountRef - 1)
			printf(", ");
	}
	printf(" }\n\n");
}



int getNextState(int charIndex, char word[], int _currentState, int _alphabetCount, char* _alphabet, char** _transitionFunction)
{
	char newState;
	int j;

	printf("\t\xE4(q%d, ", _currentState);
	for(j = charIndex; j < 100; j++) {
		if (word[j] == '\0') {
			break;
		}
		if(word[j] == ' ')
			printf("\xE5");
		else
			printf("%c", word[j]);
	}
	printf(") = ");


	for (j = 0; j < _alphabetCount; j++) {
		if (word[charIndex] == _alphabet[j]) {
			if (_transitionFunction[_currentState][j] != '\n')
				newState = _transitionFunction[_currentState][j];
			else
				newState = _currentState + '0';

			printf("q%c\n", newState);
			return(newState - '0');
		}
	}

	return -1;
}

void getWordToScan(char* word) {
	system("cls");
	printHeaderMessage();

	printf(" ----------------------------------------------\n");
	printf("| Fase 5/5 - Insercao de PALAVRAS              |\n");
	printf(" ----------------------------------------------\n");

	printf("\nAgora ja podemos comecar a testar as palavras\n");
	printf("aceitas ou nao aceitas.\n\n");

	printf("IMPORTANTE\n");
	printf("   -> Para sair do programa aperter ENTER\n");
	printf("      sem digitar nada.\n");


	printf("\nPorfavor, digite uma palavra: ");
	rewind(stdin);
	fgets(word, 100, stdin);

	removeLineBreaksFromWordToScan(word);
}

void removeLineBreaksFromWordToScan(char* word) {
	int i;

	for (i = 0; i < 100; i++) {
		if (word[i] == '\n') {
			word[i] = '\0';
			break;
		}
	}
}
