##### Rio, 14/08/2017

Provas escritas:
>- A1 - 09/10
>- A2 - 04/12
>- A3 - 18/12
>- Feriado - 20/11

***
#### Matéria

**Rede**
> Para se denominar uma rede podemos definir que existem dois ou mais computadores que utilizam um sistema básico de comunicação que envolva: Transmissor, Meio de Transmissão, Mensagem Trasmitida e o Receptor.

**Multiplexação:**
> Em um único canal é possível utilizar mais de um protocolo de transferência em rede.

**Internet:** 
> É uma interconexão de redes locais

**Camadas**
> Dados/mensagens da camada da **Aplicação** para a camada **Física** sofrem encapsulamento, já da **Física** para a **Aplicação** sofrem o desencapsulamento.


***


##### Rio, 21/08/2017

Aplicações em tempo real permitem perda de pacotes.

TCP -> Não tolera perda de pacotes

UDP -> Tolera perda de pacotes

HTTP não persistente -> Abre e fecha uma conexao pra cada objeto (Imagem, js, css) necessário para carregar uma página.

HTTP Persistente -> Abre e Fecha a conexão apenas uma única vez independente da quantidade de objetos necessários para abrir uma página.

RTT-> É o tempo que dura para o pacote trafegar do cliente ao servidor.

**Problemas do HTTP (Não Persistente):**
- Requer sempre **2 RTT** por objeto
- Overhead do SO para cada conexão TCP
- Nevegadores geralmente abrem conexões TCP paralelas  para buscar objetos referenciados.
 
**HTTP Persistente:**
- servidor deixa conexão aberta depois de enviar a resposta
- mensagem HTTP seguintes entre cliente/servidor são enviadas pela conexão aberta
- cliente envia requisições assim  que encontra o objeto referenciado
- no mínimo um **RTT** para todos os objetos referenciados.



***


##### Rio, 28/08/2017

### Camada de Aplicação

FTP (TCP) (21 e 20)
> Os dados são transportados via "Plain Text" onde não há criptografia, o que acaba não sendo muito utilizado. A porta 21 é usada para navegação e controle entre as pastas, já a porta 20 é utilizada exclusivamente para transferência de arquivos entre o cliente/servidor.


**Correio Eletrônico**

SMTP (TCP) (25) 
> Protocolo de envio e recebimento de e-mails. Utiliza a organização de Fila, primeiro e-mail que chegar será o primeiro a ser transferido. Nessa transferência ocore em 3 fases:
    1) HandShaking (Saudação) onde é validado se ambos os servidores estão funcionando e apto a transferirem mensagens
    2) Transferência dos arquivos
    3) Fechamento da conexão

DNS (53)
> Converte um nome em um IP, podendo dar nomes/apelidos a servidores que tem IP ou nomes canônicos difíceis de se lembrar por exemplo. Usado também para distribuição de carga em servidores Web.

Telnet(23)


***


##### Rio, 04/09/2017

### Camada de Transporte (TCP e UDP)
A camada de transporte é responsável por preparar as informações da camada de aplicação para a camada de rede.

TCP(20 Bytes) e UDP(8 Bytes) são os protocolos da camada de transporte.
- **Estabelecimento de uma Sessão** faz uma verificação se o caminho de transporte esta funcionando e pronta para receber os dados.
- **Entrega na Mesma Ordem** garante que os dados sejam entregues sequencialmente como foram enviados mesmo que recebidos aleatoriamente.
- **Entrega Confiável** reenviando os pacotes perdidos.
- **Controle de fluxo** gerencia a entrega de dados se há congestionamento no host. (como se fosse um guarda de trânsito mandando ir e vir)


***


##### Rio, 11/09/2017

### Processos TCP
Protocolo que estabelece conexão para envio e recebimento das informações. Dados que chegam em ordem erradas são organizados no servidor de destino. Os dados perdidos são reenviados.

#### IPT
> Diferença entre o UDP e TCP. Para que serve cada um. Porque um cabeçalho é maior que o outro.

#### Handshake Triplo
> Faz uma verificação entre origem e destino para verificar se esta online e pronta para estabelecer uma conexão. 

**Abrindo e estabelecimento a conexão**
> O PC de origem envia um pacote  SYN para destino e o destino se online retorna um pacote SYN e um pacote ACK, sendo ACK uma confirmação de recebimento do pacote SYN, por fim o origem envia um ACK para o destino para estabelecer uma conexão.

**Fechando e encerrando a conexão**
> O PC de origem envia um pacote FIN para destino e o destino retorna um pacote ACK, sendo ACK uma confirmação de recebimento do pacote FIN. O destino envia um FIN para o origem e por fim o origem envia um ACK para o destino como confirmação de recebimento do pacote FIN para encerrar uma conexão.


**MTU - Max Trasnfer Unit (Ethernet)**
> Controle de fluxo onde há um reconhecimento de Segmento TCP e Tamanho da Janela, caso haja perda de pacote, a janela é reduzida pro mínimo (1500).



### Processos UDP
Protocolo que não estabelece uma conexão para envio de dados, como o envio de SYN, ACK, FIN. Os Dados chegam fora de ordem e NÃO são organizados no servidor de origem. Os dados perdidos são efetivamente perdidos.



















