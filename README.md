# ConDex-Script

Script de shell para descompactar e compactar arquivos em massa de diversas extensões.
![inicio](https://user-images.githubusercontent.com/76860503/114484526-c7ae4a80-9be0-11eb-9eea-ff1ea234e1af.png)

#### Resumo sobre seu funcionamento:

 Uma aplicação de shell criada inicialmente para usuários Linux com objetivo de automatizar a compressão e descompressão de diversos arquivos ao mesmo tempo.
Nele possui um menu para escolher se quer compactar ou descompactar, e logo após um menu para saber qual o tipo de extensão/compactação deseja para fazer o procedimento determinado. Será possível escolher a pasta (caso não escolha será feito na pasta em que o script se encontra), mas ao colocar uma pasta específica,  precisa ser colocado com o /home/usuário no caminho indicado. Caso precise de ajuda, o comando `pwd` na pasta desejada pode ajudar pois mostra esse caminho completo. A escolha do nome de um arquivo compactado também é fornecida ao usuário, a menos que utilize extensões complementares, como .gz, que compactará apenas arquivo por arquivo com o nome do mesmo. Essas extensões complementares são boas para compactar outros tipos de compactações, deixando mais leve, como com o .tar e o .gz juntos. Logo, caso queira uma compactação em massa (compactar todos os arquivos de uma pasta em um com o nome desejado) use extensões como `.tar;.zip;.rar;.7z`.

 Script com menu bem intuitivo e de fácil uso. Ele verifica se você tem as ferramentas necessárias para a compressão ou descompressão de arquivos, precisando instalar caso não tenha (para distribuições baseadas em debian, como ubuntu, pode usar o comando `'sudo apt install NomeApresentado'`). Por exemplo, se quiser comprimir arquivos .rar, o script vai te mostrar que não encontrou a ferramenta (rar)  e que precisa ser instalado, assim pode usar o `sudo apt install rar`.

#### Informaçes gerais:

Shell Script

Versão **1.0**  ( fase de testes )

S.O. Testados: **Linux e Windows (WSL)** |  Recomendado (feito para) : Distribuições Linux

Ferramentas necessárias / usadas pelo script: *tar; gzip; bzip2; xz; rar; zip; 7za; compress; lzma; gunzip; bunzip2; unxz; unzip; uncompress* 

**Script para Compactação:**

 ![menuCompact](https://user-images.githubusercontent.com/76860503/114485082-b9acf980-9be1-11eb-87e2-4d7065fa866d.png)

**Script para Descompactação:**

 ![menuDescompact](https://user-images.githubusercontent.com/76860503/114485292-098bc080-9be2-11eb-9e52-6e7aaaf057a0.png)

### *Notas:*

Testado em **Windows** com `Subsistema de Linux no Windows` **(WSL2)**;
Testado em distribuições **Linux** baseadas em Debian; 



###  Tutoriais:

#### Nesta área terá os tutoriais de uso para usuários de Linux e Windows



***Usando o script em distros linux:***

- Precisará baixar o script (com git clone ou manualmente pelo site) > Tornar o arquivo executável com o comando `chmod +x ConDeX.sh` na pasta onde o arquivo se encontra (pode jogar ele na pasta que quiser) > executar o arquivo rodando `./ConDeX.sh` > Prontinho.

**Opções para quem quiser usar o script como um comando em qualquer lugar pelo terminal:**

*(Pode renomear o arquivo e tirar a extensão .sh se preferir)*

- Criando atalho no bin com link simbólico:

  Criando um link suave em `/usr/bin`

  *Atenção: Altere o 2o caminho indicado para onde o script se encontra em sua máquina.*

  ```bsh
  ln -s /usr/bin/ConDeX.sh  /pasta/onde/colocou/ConDex.sh
  ```

  O arquivo já tendo permissão de execução (`chmod`), pode executar o script:

  ```bsh
  ConDeX.sh
  ```

  Nota: Não é recomendado um link simbólico `/usr/local/bin` que aponte para um script em uma pasta pessoal particular, como `/home/matheus/ConDeX.sh`, pois somente o usuário `matheus` poderá efetivamente executar. O link simbólico estará visível a outros, mas não para o arquivo apontado. Em um sistema de usuário único, isso não importa. Entretanto, leve como uma "boa prática" colocar scripts (ou links para scripts) que *todos os* usuários possam ler `/usr/local/bin` , a não ser que seja algum script privado.

- Colocando o script  na pasta bin direto;

  Caso não exista a pasta bin:

  ```bsh
  mkdir -p ~/bin
  ```

  Colocando na pasta bin via copia:

  ```
  cp /caminho/completo/do/script ~/bin
  ```

  Colocando na pasta bin movendo diretamente

  ```
  mv /caminho/completo/do/script ~/bin
  ```

  Já existindo o `~/bin` o `$PATH` é adicionado automaticamente. Então você pode chamar diretamente pelo nome do arquivo no terminal

-  Criando um `alias`;

  ```bsh
  alias condex='cd /caminho/do/script/; ./ConDex.sh'
  ```

  Agora pode executar com o nome que colocou no código:

  ```bsh
  $ condex
  ```
   Obs: esses passos acima podem não funcionar muito bem para quem esta usando WSL (windows)
 
  ***Instalando dependências:***
  
 Caso precise instalar alguma dependência (mostrada pelo script), apenas use o comando de instalação da sua distro com o nome informado que não foi encontrado, como por exemplo> `sudo apt install rar` após receber "RAR NÃO encontrado! Favor, instale e tente novamemte" (exemplo abaixo para a extensão de complemento .bz2)

Caso o pacote não seja encontrado no repositório da distro, procure como instalar ele na internet ou troque de extensão  
 
  ![exemplo](https://user-images.githubusercontent.com/76860503/114658204-d15ead80-9cc7-11eb-9a04-e2494fc6712b.png)

 (Funcionamento da ferramenta em windows + Exemplo de quando falta dependência e a sua instalação)


  
  
 
  ***Usando o script em Windows:***

Precisa ativar o WSL para usar terminal Ubuntu no Windows.

 - Apertar “*Win+r*”  >  Digitar “*optionalfeatures*”  >  Ativar / Marcar a caixinha “*Subsistema do Windows para Linux*”  >  *Powershell* como **administrador**  > digitar os comandos abaixo:

   ```
   dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
   ```

   ```
   dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
   ```

 - Baixar e abrir o terminal linux na **loja de apps da microsoft** pelo nome da distribuição, podendo instalar o **Ubuntu** >  Reiniciar o PC > **Pronto!!**

*Baixando Ubuntu e usando o terminal dele, já pode usar o script.*

- Para abrir o script precisa ir na pasta dele pelo Terminal e usar o comando: " ./ConDex.sh  " (**IMPORTANTE!!** Primeira vez abrindo o programa precisa dar permissão de execução pra ele. Por isso use o comando " `chmod +x ConDex.sh` " antes da **primeira** execução, como já vimos no tutorial para usuários linux)

Para entrar na pasta do seu script use o comando `cd` até onde ele está, podendo usar o comando `ls` pra auxiliar (assim da pra ir entrando de pasta em pasta)
Exemplo, pra ir pra raiz desse subsistema linux, uso o comando ' cd / '; na pasta de dispositivos 'montados' estará o disco C (e qlqr partição sua do win);
  Sendo assim, caso queira entrar no seu desktop, use o comando:
`cd /mnt/c/Users/USUARIO/Desktop/` -> em *USUARIO* colocar a pasta do seu usuário; em *c* colocar a letra representativa do disco / partição (geralmente C:, que será representado como `c`); 
 *Caso queira ir em outra pasta sem ser o Desktop, é só ir navegando nas pastas que quiser. Repito, para quem n esta acostumado, pode ir navegando aos poucos podendo ser auxiliado com o comando `ls` que lista todos os arquivos e diretórios ( as pastas ficam em **negrito** ). Pode também apenas copiar e colar o caminho de onde está o script na pasta q vc deixou, mas se é do seu windows, ent coloque o `/mnt/` antes do `c` e não o use com dois pontos e nem maiúsculo) (C://~nao usar assim) - caso de erro, pode ser que precisa estar em ingles o nome, como na area de trabalho estar desktop*

```
Caso precise de ajuda para usar o terminal, pode acessar: https://matheuslaidler.github.io/terminal
Nele tem explicação dos comandos do terminal, e tem a parte onde explicamos o comando cd, ls e o apt, que podem ser importantes.
Inclusive, nele tbm está presente tutorial de WSL.
```
 Depois de poder usar o WSL, um tutorial para Linux se torna viável também  (tlvz n funcione direito a parte de deixar o script executável em qlqr pasta so chamando o nome).

##### Ideias / Sugestões anotadas:

*- Verificar compatibilidade: Colocado -*
*- Instalar as ferramentas após a verificação, caso não possuam: Não colocado (problemática: seria apenas para distros que usam 'apt', por isso não adicionei essa funcionalidade ainda, mas ja pensei em uns jeitos de fazer isso funcionar tbm de forma automática, mas como foge da proposta do projeto, posso deixar isso pra um futuro. Ao mesmo tempo que quero algo prático, tbm quero algo compatível) - (ideia ainda está em aberto)*

### Créditos:

Criador: Matheus Laidler

Licença MIT
