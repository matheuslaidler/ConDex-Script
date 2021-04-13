# ConDex-Script
Script de shell para descompactar e compactar arquivos em massa de diversas extensões.
![inicio](https://user-images.githubusercontent.com/76860503/114484526-c7ae4a80-9be0-11eb-9eea-ff1ea234e1af.png)
#### Resumo sobre seu funcionamento:
 Uma aplicação de shell criada para usuários Linux/GNU. Seu objetivo é automatizar a compressão e descompressão de diversos arquivos ao mesmo tempo.
Nele possui um menu para escolher se quer compactar ou descompactar, e logo após um menu para saber qual o tipo de extensão/compactaço deseja para fazer o procedimento desejado. Podendo escolher a pasta (caso não escolha será feito na pasta em que o script se encontra), precisando ser colocado com o /home/usuário no caminho, podendo usar o comando PWD na pasta desejada para usar o caminho correto. A escolha do nome de um arquivo compactado também é fornecida ao usuário, a menos que utilize extensôes complementares, como .gz, que compactará apenas arquivo por arquivo com o nome do mesmo.
 Script com menu bem intuitivo e de fácil uso. Ele verifica se você tem as ferramentas necessárias para a compressão ou descompressão de arquivos, precisando instalar caso não tenha. Por exemplo, se quiser extrair arquivos .rar o script vai te mostrar que não encontrou a ferramenta (unrar) de descompressão e que precisa ser instalado.

#### Informaçes gerais:
Versão 1.0
S.O.: Linux
Shell Script
Ferramentas necessárias / usadas pelo script: tar; gzip; bzip2; xz; rar; zip; 7za; compress; lzma; gunzip; bunzip2; unxz; unzip; uncompress 
 Menu de opçes de Compactação:
 ![menuCompact](https://user-images.githubusercontent.com/76860503/114485082-b9acf980-9be1-11eb-87e2-4d7065fa866d.png)
 Menu de opções de Descompactação:
 ![menuDescompact](https://user-images.githubusercontent.com/76860503/114485292-098bc080-9be2-11eb-9e52-6e7aaaf057a0.png)

### Créditos:
Criador: Matheus Laidler
Licença MIT
