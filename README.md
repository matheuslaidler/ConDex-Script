# ConDex-Script
Script de shell para descompactar e compactar arquivos em massa de diversas extensões.
![inicio](https://user-images.githubusercontent.com/76860503/114484526-c7ae4a80-9be0-11eb-9eea-ff1ea234e1af.png)
#### Resumo sobre seu funcionamento:
 Uma aplicação de shell criada para usuários Linux/GNU. Seu objetivo é automatizar a compressão e descompressão de diversos arquivos ao mesmo tempo.
Nele possui um menu para escolher se quer compactar ou descompactar, e logo após um menu para saber qual o tipo de extensão/compactaço deseja para fazer o procedimento desejado. Podendo escolher a pasta (caso não escolha será feito na pasta em que o script se encontra), precisando ser colocado com o /home/usuário no caminho, podendo usar o comando PWD na pasta desejada para usar o caminho correto. A escolha do nome de um arquivo compactado também é fornecida ao usuário, a menos que utilize extensôes complementares, como .gz, que compactará apenas arquivo por arquivo com o nome do mesmo.
 
 Script com menu bem intuitivo e de fácil uso. Ele verifica se você tem as ferramentas necessárias para a compressão ou descompressão de arquivos, precisando instalar caso não tenha. Por exemplo, se quiser extrair arquivos .rar o script vai te mostrar que não encontrou a ferramenta (unrar) de descompressão e que precisa ser instalado.

#### Informaçes gerais:

Shell Script

Versão 1.0  (testes)

S.O. Testados: Linux e Windows(WSL)

Ferramentas necessárias / usadas pelo script: tar; gzip; bzip2; xz; rar; zip; 7za; compress; lzma; gunzip; bunzip2; unxz; unzip; uncompress 

Menu de opçes de Compactação:
 
 ![menuCompact](https://user-images.githubusercontent.com/76860503/114485082-b9acf980-9be1-11eb-87e2-4d7065fa866d.png)
 
Menu de opções de Descompactação:
 
 ![menuDescompact](https://user-images.githubusercontent.com/76860503/114485292-098bc080-9be2-11eb-9e52-6e7aaaf057a0.png)
 
### Notas:
Testado em Windows com Subsistema de linux no Windows (WSL2);
Testado em distribuições linux baseadas em Debian;

-Ideias futuras pra att: instalar as ferramentas caso não possua (porém seria apenas para distros que usam 'apt', por isso não adicionei essa funcionalidade ainda)-

### Tutoriais:
Para quem quiser usar o script em Windows:

Precisa ativar o WSL para usar terminal Ubuntu no Windows.

 - Apertar “Win+r”  >  Digitar “optionalfeatures”  >  Ativar / Marcar a caixinha “Subsistema do Windows para Linux”  >  Powershell como administrador  > digitar os codigos abaixo:

 - dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

 - dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

 - Baixar e abrir o teriminal linux na loja de apps da microsoft pelo nome da distribuição, como por exemplo o Ubuntu >  Reiniciar > Pronto.

Baixando Ubuntu e usando o terminal dele, ja pode usar o script.

- Para abrir no script precisa ir na pasta dele pelo Terminal e abrir com o comando: " ./ConDex.sh  " (IMPORTANTE!! Primeira vez abrindo o programa precisa dar permissão pra ele, use o comando " chmod +x ConDex.sh ")

Para entrar na pasta do seu script use o comando cd até onde ele está, podendo usar o comando ls pra auxiliar.
Caso queira entrar no seu desktop, use o comando: (para quem esta no wsl)

cd /mnt/c/Users/USUARIO/Desktop/ -> em USUARIO colocar a pasta do seu usuário; em c colocar a letra representativa do disco / partição; 
 Caso queira ir em outra pasta sem ser o Desktop, é só ir indo até a pasta do usuário apenas e ir indo nas pastas que quiser, podendo ser visto pelo comando 'ls' (lista todos os arquivos e diretórios ( as pastas ficam em negrito ).


Caso precise de ajuda para usar o terminal, pode acessar: https://matheuslaidler.github.io/terminal

Inclusive, este tutorial de WSL está presente lá também.



### Créditos:
Criador: Matheus Laidler

Licença MIT
