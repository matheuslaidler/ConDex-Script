#!/bin/bash

#&1>/dev/null &2>/dev/null
#test -e *.ext; echo $? > arquivo.txt   if [[ $(cat arquivo.txt) = "0" ]]   0=true 1=false   (dava problema com .xz, .bz2 e .gz) [mudei de ideia, agr o programa n vai reconhecer e descompactar, a pessoa q vai escolher a extensão q quer compactar e/ou descompactar - assim evita probemas, fica completo e mais prático para muitas situações]
#Colocar a verificação de cada extensão (como fizemos com winrar)

home(){
echo "
  -----------------------------------------------------
    ConDeX: Compactador e Descompactador de Arquivos
        Empacote ou desempacote arquivos em massa
  -----------------------------------------------------
"
sleep 0.5s

echo "> Deseja COMPACTAR ou DESCOMPACTAR os arquivos? (c/D)"
read resp


if [[ $resp = c ]];then
 compactar(){
    echo "
  ----------------------------------------------------- 
   Compactação em massa: Escolha o tipo de compressão
  -----------------------------------------------------
    Menu de opções para compactação de seus arquivos
            <Enter> para reabrir o menu
            
            "
    opcoes=("TAR" "TAR.GZ" "TAR.XZ" "TAR.BZ2" "GZ" "BZ2" "XZ" "RAR" "ZIP" "7Z" "Z" "lzma" "Help" "Voltar" "Sair")
    select menu in "${opcoes[@]}"
    do
     case $menu in
            "TAR")
            echo "
           ****************************
            Compactar arquivos em .TAR
           ****************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which tar &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt 
               sleep 0.5s
              else
              echo "TAR NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT COMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Compactando arquivos do diretório atual"
            echo "
> Escolha um nome para o arquivo compactado:"
            read nome
            tar -zcf $nome.tar *
            echo "Como compactamos tudo desta pasta, o script foi junto
            (Os arquivos foram compactados, suas versões descompactadas podem ser deletadas)
            "
          else
          echo "Compactando arquivos do diretório especificado"
            cd $caminho
            echo "
> Escolha um nome para o arquivo compactado:"
            read nome
            tar -zcf $nome.tar *
            fi
            echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "TAR.GZ")
            echo "
           *******************************
            Compactar arquivos em .TAR.GZ
           *******************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which tar &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "TAR NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT COMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Compactando arquivos do diretório atual"
            echo "
> Escolha um nome para o arquivo compactado:"
            read nome
            tar -cz * > $nome.tar.gz
            echo "Como compactamos tudo desta pasta, o script foi junto
            (Os arquivos foram compactados, suas versões descompactadas podem ser deletadas)
            "
          else
          echo "Compactando arquivos do diretório especificado"
            cd $caminho
            echo "
> Escolha um nome para o arquivo compactado:"
            read nome
            tar -cz * > $nome.tar.gz
            fi
            echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "TAR.XZ")
            echo "
           *******************************
            Compactar arquivos em .TAR.XZ
           *******************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which tar &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "TAR NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT COMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Compactando arquivos do diretório atual"
            echo "
> Escolha um nome para o arquivo compactado:"
            read nome
            tar -cz * > $nome.tar.xz
            echo "Como compactamos tudo desta pasta, o script foi junto
            (Os arquivos foram compactados, suas versões descompactadas podem ser deletadas)
            "
          else
          echo "Compactando arquivos do diretório especificado"
            cd $caminho
            echo "
> Escolha um nome para o arquivo compactado:"
            read nome
            tar -cz * > $nome.tar.xz
            fi
            echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "TAR.BZ2")
            echo "
           ********************************
            Compactar arquivos em .TAR.BZ2
           ********************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which tar &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "TAR NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT COMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Compactando arquivos do diretório atual"
            echo "
> Escolha um nome para o arquivo compactado:"
            read nome
            tar -cz * > $nome.tar.bz2
            echo "Como compactamos tudo desta pasta, o script foi junto
            (Os arquivos foram compactados, suas versões descompactadas podem ser deletadas)
            "
          else
          echo "Compactando arquivos do diretório especificado"
            cd $caminho
            echo "
> Escolha um nome para o arquivo compactado:"
            read nome
            tar -cz * > $nome.tar.bz2
            fi
            echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "GZ")
            echo "
           ***************************
            Compactar arquivos em .GZ
           ***************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which gzip &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "GZIP NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> ATENÇÃO: Essa extensão não foi feita para comprimir varios arquivos em um só, portanto serão comprimidos de forma separada (com o nome dos respectivos arquivos). 
Isso ocorre porque o comando é para ser um complemento e não um substituto - caso queira compactar tudo em um só arquivo, utilize opções como o TAR, o qual essa extensão pode se tornar um complemento, ou seja, seus arquivos TAR podem ficar como TAR.GZ

> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT COMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado.
"
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Compactando cada arquivo do diretório atual
"
             gzip -cfq *
            echo "Os arquivos foram todos compactados ou adicionados com a extensão .gz
            "
          else
          echo "Compactando cada arquivo do diretório especificado"
            cd $caminho
            gzip -cfq *
            fi
            echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "BZ2")
            echo "
           ****************************
            Compactar arquivos em .BZ2
           ****************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which bzip2 &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "BZIP2 NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> ATENÇÃO: Essa extensão não foi feita para comprimir varios arquivos em um só, portanto serão comprimidos de forma separada (com o nome dos respectivos arquivos). 
Isso ocorre porque o comando é para ser um complemento e não um substituto - caso queira compactar tudo em um só arquivo, utilize opções como o TAR, o qual essa extensão pode se tornar um complemento, ou seja, seus arquivos TAR podem ficar como TAR.GZ

> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT COMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado.
"
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Compactando cada arquivo do diretório atual
"
             bzip2 --compress --quiet *
            echo "Os arquivos foram todos compactados ou adicionados com a extensão .gz
            "
          else
          echo "Compactando cada arquivo do diretório especificado"
            cd $caminho
            bzip2 --compress --quiet *
            fi
            echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "XZ")
            echo "
           ***************************
            Compactar arquivos em .XZ
           ***************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which xz &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "XZ NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> ATENÇÃO: Essa extensão não foi feita para comprimir varios arquivos em um só, portanto serão comprimidos de forma separada (com o nome dos respectivos arquivos). 
Isso ocorre porque o comando é para ser um complemento e não um substituto - caso queira compactar tudo em um só arquivo, utilize opções como o TAR, o qual essa extensão pode se tornar um complemento, ou seja, seus arquivos TAR podem ficar como TAR.GZ

> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT COMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado.
"
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Compactando cada arquivo do diretório atual
"
             xz --compress --quiet *
            echo "Os arquivos foram todos compactados ou adicionados com a extensão .gz
            "
          else
          echo "Compactando cada arquivo do diretório especificado"
            cd $caminho
            xz --compress --quiet *
            fi
            echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "RAR")
            echo "
           ****************************
            Compactar arquivos em .RAR
           ****************************"
           echo "
            [ ! ] Requer rar instalado 
         * Verificando WINRAR no sistema..." 
            sleep 0.3s

             which rar &>/dev/null; echo $? > rar.txt
               if [[ $(cat rar.txt) = 0 ]];then
               echo "
               Winrar encontrado!  
              Iniciando processo..."
               rm rar.txt
                sleep 0.5s
              else
              echo "
              Winrar NÃO encontrado! 
              Favor, instale e tente novamente."
              rm rar.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT COMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Compactando arquivos e pastas do diretório atual"
            echo "
> Escolha um nome para o arquivo compactado:"
            read nome
            rar a $nome.rar * #&>/dev/null
            echo "Como compactamos tudo desta pasta, como arquivos e subpastas, o script pode ter ido junto
            (Os arquivos foram compactados, suas versões descompactadas podem ser deletadas)
            "
          else
          echo "Compactando arquivos e pastas do diretório especificado"
            cd $caminho
            echo "
> Escolha um nome para o arquivo compactado:"
            read nome
            rar a $nome.rar * #&>/dev/null
            fi
            echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "ZIP")
            echo "
           ****************************
            Compactar arquivos em .ZIP
           ****************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which zip &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "ZIP NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT COMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Compactando arquivos e pastas do diretório atual"
            echo "
> Escolha um nome para o arquivo compactado:"
            read nome
            zip $nome.zip *
            echo "Como compactamos tudo desta pasta, o script foi junto
            (Os arquivos foram compactados, suas versões descompactadas podem ser deletadas)
            "
          else
          echo "Compactando arquivos e pastas do diretório especificado"
            cd $caminho
            echo "
> Escolha um nome para o arquivo compactado:"
            read nome
            zip $nome.zip *
            fi
           echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "7Z")
            echo "
           ***************************
            Compactar arquivos em .7Z
           ***************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which 7za &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "7ZA NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT COMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Compactando arquivos e pastas do diretório atual"
            echo "
> Escolha um nome para o arquivo compactado:"
            read nome
            7za a $nome.7z *
            echo "Como compactamos tudo desta pasta, o script pode ter ido junto
            (Os arquivos foram compactados, arquivos e subpastas, suas versões descompactadas podem ser deletadas)
            "
          else
          echo "Compactando arquivos e pastas do diretório especificado"
            cd $caminho
            echo "
> Escolha um nome para o arquivo compactado:"
            read nome
            7za a $nome.7z *
            fi
           echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "Z")
            echo "
           *****************************
              Compactar arquivos em .Z
           *****************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which compress &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "comando COMPRESS NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT COMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Compactando arquivos do diretório atual"
            compress -f * &>/dev/null
          else
          echo "Compactando arquivos do diretório especificado"
            cd $caminho
            compress -f * &>/dev/null
            fi 
           echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "lzma")
            echo "
           *****************************
            Compactar arquivos em .lzma
           *****************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which lzma &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "LZMA NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              fi
           echo "
> ATENÇÃO: Essa extensão não foi feita para comprimir varios arquivos em um só, portanto serão comprimidos de forma separada (com o nome dos respectivos arquivos). 
Isso ocorre porque o comando é para ser um complemento e não um substituto - caso queira compactar tudo em um só arquivo, utilize opções como o TAR, o qual essa extensão pode se tornar um complemento, ou seja, seus arquivos TAR podem ficar como TAR.GZ

> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT COMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado.
"
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Compactando cada arquivo do diretório atual
"
             lzma *
            echo "Os arquivos foram todos compactados ou adicionados com a extensão .lzma
            "
          else
          echo "Compactando cada arquivo do diretório especificado"
            cd $caminho
            lzma *
            fi
            echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "Help")
            echo "  
    Ajuda para Compactação;"
            
          echo "
      :::::::::::::::::::::    
       HELP//MAN -- ConDex
      :::::::::::::::::::::

  ConDex: Script criado para compactar (e descompactar) arquivos de forma automatizada e 'universal'(qse) para usuários Linux/GNU.
   .Nele possuem diversas opções para os tipo de compressão que você precisar.
   .Algumas opções não comprimem pastas (podendo arrastar pra dentro depois) e outras não comprimem tudo de uma vez em um unico arquivo por serem opções complementares (como o .gz).
   .O script nada mais faz do que usar o comando de compactação do tipo de arquivo no terminal, ficando limitado as próprias limitações dos respectivos comandos (não sendo um problema do script em sí).
   .Por serem comandos, algumas opções podem requerer instalação por fora em algumas distribuições.
   .O script pode ser executado na mesma pasta dos arquivos a serem compactados, ou pode ser indicado o caminho do local desejado (deve ser completo, com a home e usuário). Para isso pode usar o comando 'pwd' na pasta onde eles se encontram e copiar a saída e usar isso na hora de indicar o diretório desejado.
   .Para usar as opções corretamente, fique atento nas indicações que são mostradas na tela, os numeros e letras para opção de escolha precisam ser as mesmas na hora de digiar, isto é, se aparecer um 'n' (minúsculo) então deverá ser respondido a mesma letra em minúsculo; se for um número, deverá ser o número exato da opção, e por aí vai.
   .Caso queira cancelar / fechar o script por algum motivo, aperte CTRL + C ou use a opção Sair.
   .Caso queira copiar e colar algo (como o caminho específico) use o mouse ou CTRL+SHIFT+V.
   .Os créditos do script devem ser mantidos ao criador do mesmo (Matheus Laidler).
   
   Lista dos comandos usados no script (caso precise): 7za; unzip; unrar; unzip; tar; bunzip2; gunzip; unxz; uncompress; compress; xz; gzip; bzip2; rar; zip... "
    sleep 0.5s
  echo "
  
  Pressione <ENTER> para voltar"
    read
    sleep 1.2s
    clear
    compactar
            ;;
            "Voltar")
            clear
            home
            ;;
            "Sair")
            echo "
---------------------------------------------------------------
  Obrigado pela preferência!
                                    ************************** 
                                    Créditos: Matheus Laidler
                                    **************************
> Saindo..."
            sleep 0.3s
echo "
---------------------------------------------------------------
"
            sleep 0.5s
            exit
            ;;
            *)
            echo -e "
 ------- 
  ERROR
 -------
> Resposta inválida
[[ Opção não reconhecida ]]
> Operação inválida\n> Tente novamente

Carregando ajuda:"
            sleep 0.5s
echo "Deseja abrir a opção de ajuda rápida? (s) sim  (n) não"
read resp
if [[ $resp = s ]];then
            echo "
   
      :::::::::::::::::::::    
        FastHELP -- ConDex
      :::::::::::::::::::::
  .Pressionar as teclas corretas indicadas para entrar no menu (c/D) - respeitando se é maiúsculo ou minúsculo - para escolher se quer Compactar ou Descompactar os arquivos em massa;
  .Selecionar as opções do menu ao indicar o número referente a qual extensão quer fazer a compressão/descompactação;
  .Ao indicar a extensão, será necessário colocar o caminho correto dos arquivos - a pasta em que se encontram - ou deixar em branco caso o script já esteja na mesma pasta dos arquivos. Importante colocar o caminho completo, desde a home do usuário [ <exemplo> ' /home/usuario/Downloads ' ];
  .Pronto, processo finalizado.
  -Algumas extensões foram desenvolvidas para serem complementares e por isso sua função pode ser diferente (ex: gz em arquivo tar: .tar.gz). Esses tipos de extensões não são legais para compactação em massa (para o uso dela pura), ao usar essa opção irá compactar um de cada vez com seus respectivos nomes [otimo pra completar um .tar];
  
"
sleep 1.2s
echo "Voltar (1) ou Home (2)"
  read i
  if [[ $i = 1 ]];then
sleep 1.5s
clear
compactar
  elif [[ $i = 2 ]];then
sleep 1.5s
clear
home
  else
  echo "Comando não reconhecido. Voltando..."
  sleep 1s 
  home
  fi

else
echo "

Voltando..."
sleep 2s
  clear
compactar
fi
            ;;
      esac
    done

 }
compactar

elif [[ $resp = "" ]];then
echo "Selecione uma das opções: (D)escompactar & (c)ompactar"
sleep 0.5s
echo "Retornando ao menu principal..."
sleep 1.2s
clear
home
elif [[ $resp = D ]];then
descompactar(){
    echo "  
  ----------------------------------------------------- 
      Descompactação em massa: Selecione a extensão
  -----------------------------------------------------
      Opções para a descompactação de seus arquivos
            <Enter> para reabrir o menu
            
            "
    opcoes=("TAR" "TAR.GZ" "TAR.XZ" "TAR.BZ2" "GZ" "BZ2" "XZ" "RAR" "ZIP" "7Z" "Z" "lzma" "Help" "Voltar" "Sair") 
       select menu in "${opcoes[@]}"
    do
     case $menu in
            "TAR")
            echo "
           *******************************
            Descompactar arquivos em .TAR
           *******************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which tar &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "TAR NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT DESCOMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Descompactando arquivos do diretório atual"
            tar -xvf *
          else
          echo "Descompactando arquivos do diretório especificado"
            cd $caminho
            tar -xvf *
            fi
           echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "TAR.GZ")
            echo "
           **********************************
            Descompactar arquivos em .TAR.GZ
           **********************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which tar &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "TAR NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT DESCOMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Descompactando arquivos do diretório atual"
            tar -vzxf *
          else
          echo "Descompactando arquivos do diretório especificado"
            cd $caminho
            tar -vzxf *
            fi 
           echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "TAR.XZ")
            echo "
           **********************************
            Descompactar arquivos em .TAR.XZ
           **********************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which tar &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "TAR NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT DESCOMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Descompactando arquivos do diretório atual"
            tar -xvf *
          else
          echo "Descompactando arquivos do diretório especificado"
            cd $caminho
            tar -xvf *
            fi 
           echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "TAR.BZ2")
            echo "
           ***********************************
            Descompactar arquivos em .TAR.BZ2
           ***********************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which tar &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "TAR NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT DESCOMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Descompactando arquivos do diretório atual"
            tar -jxvf *
          else
          echo "Descompactando arquivos do diretório especificado"
            cd $caminho
            tar -jxvf *
            fi 
           echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "GZ")
            echo "
           ******************************
            Descompactar arquivos em .GZ
           ******************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which gunzip &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "GUNZIP NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT DESCOMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read $caminho
           if [[ $caminho = "" ]]; 
         then
         echo "Descompactando do diretório atual"
            gunzip * &>/dev/null
          else
          echo "Descompactando do diretório especificado"
            cd $caminho
            gunzip * &>/dev/null
            fi 
           echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "BZ2")
            echo "
           *******************************
            Descompactar arquivos em .BZ2
           *******************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which bunzip2 &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "BUNZIP NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT DESCOMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read $caminho
           if [[ $caminho = "" ]]; 
         then
         echo "Descompactando do diretório atual"
            bunzip2 * &>/dev/null
          else
          echo "Descompactando do diretório especificado"
            cd $caminho
            bunzip2 * &>/dev/null
            fi 
           echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "XZ")
            echo "
           ******************************
            Descompactar arquivos em .XZ
           ******************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which unxz &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "UNXZ NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT DESCOMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read $caminho
           if [[ $caminho = "" ]]; 
         then
         echo "Descompactando do diretório atual"
            unxz * &>/dev/null
          else
          echo "Descompactando do diretório especificado"
            cd $caminho
            unxz * &>/dev/null
            fi 
           echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "RAR")
            echo "
           ******************************
              Descompactar arquivos RAR
           ******************************"
            echo "
            [ ! ] Requer rar instalado 
         * Verificando WINRAR no sistema..." 
            sleep 0.3s

             which unrar &>/dev/null; echo $? > rar.txt
               if [[ $(cat rar.txt) = 0 ]];then
               echo "         
               Winrar encontrado!  
           * Iniciando processo..."
               rm rar.txt
                sleep 0.5s
              else
              echo "Winrar NÃO encontrado! Favor, instale e tente novamente."
              rm rar.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT DESCOMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read caminho
         if [[ $caminho = "" ]]; 
         then
        
                    echo "
  .Deseja visualizar saída do procedimento da descompressão do arquivo RAR? (s/N) 
  [ s -> log (informação de todo o processo na tela) | N -> clean (saída limpa) ]" 
                    read rs
                    if [[ $rs = s ]]; then 
                   echo "   Descompactando arquivos RAR do diretório atual"
                    unrar x *.rar 
                   echo "   Arquivos RAR descompactado com sucesso!"
                    else 
                    unrar x *.rar &>/dev/null 
                    echo "    Processo finalizado!"
                    fi
          else
          echo "
  .Deseja visualizar saída do procedimento da descompressão do arquivo RAR? (s/N) 
  [ s -> log (informação de todo o processo na tela) | N -> clean (saída limpa) ]" 
            cd $caminho
                    echo "
  Deseja visualizar saída do procedimento de descompressão do arquivo RAR? (s/N)" 
                    read rs
                    if [[ $rs = s ]]; then 
                   echo "   Descompactando arquivos RAR do diretório atual"
                    unrar x *.rar 
                   echo "   Arquivo RAR descompactado com sucesso!"
                    else 
                    echo "   Descompactando arquivos RAR do diretório atual"
                    unrar x *.rar &>/dev/null 
                    echo "    Arquivo RAR descompactado com sucesso!"
                    fi
           fi
            echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "ZIP")
            echo "
           *******************************
            Descompactar arquivos em .ZIP
           *******************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which unzip &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "UNZIP NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT DESCOMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Descompactando arquivos do diretório atual"
            unzip * &>/dev/null
          else
          echo "Descompactando arquivos do diretório especificado"
            cd $caminho
            unzip * &>/dev/null
            fi 
           echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "7Z")
            echo "
           ******************************
            Descompactar arquivos em .7Z
           ******************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which 7za &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "7ZA NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT DESCOMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Descompactando arquivos do diretório atual"
            7za e * &>/dev/null
          else
          echo "Descompactando arquivos do diretório especificado"
            cd $caminho
            7za e * &>/dev/null
            fi 
           echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "Z")
            echo "
           *****************************
            Descompactar arquivos em .Z
           *****************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which uncompress &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "comando UNCOMPRESS NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT DESCOMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado."
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Descompactando arquivos do diretório atual"
            uncompress *.Z &>/dev/null
          else
          echo "Descompactando arquivos do diretório especificado"
            cd $caminho
            uncompress *.Z &>/dev/null
            fi 
           echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "lzma")
            echo "
           ********************************
            Descompactar arquivos em .lzma
           ********************************"
           echo "
           *  Verificando requisitos..." 
            sleep 0.3s

             which lzma &>/dev/null; echo $? > req.txt
               if [[ $(cat req.txt) = 0 ]];then
               echo "
           Sucesso!! Requisito encontrado. 
                Iniciando processo..."
               rm req.txt
                sleep 0.5s
              else
              echo "LZMA NÃO encontrado! Favor, instale e tente novamente."
              rm req.txt
              break
              fi
           echo "
> Forneça o caminho do diretório dos arquivos (exemplo: /home/usuario/Downloads).
#AVISO: O SCRIPT DESCOMPACTARÁ TODOS OS ARQUIVOS DO DIRETÓRIO ESPECIFICADO 
#Caso nenhum diretório seja especificado, o processo ocorrerá onde o script está armazenado.
"
           read caminho
         if [[ $caminho = "" ]]; 
         then
         echo "Descompactando cada arquivo do diretório atual
"
             lzma -d *
            echo "Os arquivos foram todos descompactados / retirada a extensão .lzma
            "
          else
          echo "Descompactando cada arquivo do diretório especificado"
            cd $caminho
            lzma -d *
            fi
            echo "Processo finalizado! Pressione <ENTER> para retornar as opções do menu."
            ;;
            "Help")
            echo "  
     Ajuda para Descompactação;"
            
          echo "
      :::::::::::::::::::::    
       HELP//MAN -- ConDex
      :::::::::::::::::::::

  ConDex: Script criado para descompactar (e compactar) arquivos de forma automatizada e 'universal'(qse) para usuários Linux/GNU.
   .Nele possuem diversas opções para os tipo de compressão que você precisar e até para quais tipos de arquivos comprimidos você precisa descompactar.
   .O script nada mais faz do que usar o comando de descompactação do tipo de arquivo no terminal, ficando limitado as próprias limitações dos respectivos comandos (não sendo um problema do script em sí).
   .Por serem comandos, algumas opções podem requerer instalação por fora em algumas distribuições.
   .Para usar as opções corretamente, fique atento nas indicações que são mostradas na tela, os numeros e letras para opção de escolha precisam ser as mesmas na hora de digiar, isto é, se aparecer um 'n' (minúsculo) então deverá ser respondido em minúsculo; se for um número, deverá ser o número exato da opção, e por aí vai.
   .Caso queira descompactar em alguma pasta específica, sugiro que deixe o(s) arquivo(s) compactado(s) nela e coloque o diretório na hora (ou execute o script dentro desta pasta, ou indique o diretório na hora do procedimento). O caminho de onde estão os arquivos deve ser colocar inteiro, com pasta home do usuário junto. Pode usar o pwd na pasta e usar a saida dele.
   .Caso queira cancelar / fechar o script por algum motivo, aperte CTRL + C.
   .Caso queira copiar e colar algo (como o caminho específico) use o mouse ou o comando CTRL+SHIFT+V.
   .Os créditos do script devem ser mantidos ao criador do mesmo (Matheus Laidler).
   
   Lista dos comandos usados no script (caso precise): 7za; unzip; unrar; unzip; tar; bunzip2; gunzip; unxz; uncompress; compress; xz; gzip; bzip2; rar; zip... "
    sleep 0.5s
  echo "
  
  Pressione <ENTER> para voltar"
    read
    sleep 1.2s
    clear
    descompactar
            ;;
            "Voltar")
          clear
          home
            ;;
            "Sair")
            echo "
---------------------------------------------------------------
  Obrigado pela preferência!
                                    ************************** 
                                    Créditos: Matheus Laidler
                                    **************************
> Saindo..."
            sleep 0.3s
echo "
---------------------------------------------------------------
"
            sleep 0.5s
            exit
            ;;
            *)
            echo -e "
 ------- 
  ERROR
 -------
> Resposta inválida
 [[ Opção não reconhecida ]]
> Operação inválida\n> Tente novamente"
      sleep 0.5s
       echo "
Deseja abrir a opção de ajuda rápida? (s) sim  (n) não"
      read resp
      if [[ $resp = s ]];then
            echo "
   
      :::::::::::::::::::::    
        FastHELP -- ConDex
      :::::::::::::::::::::
  .Pressionar as teclas corretas indicadas para entrar no menu (c/D) - respeitando se é maiúsculo ou minúsculo - para escolher se quer Compactar ou Descompactar os arquivos em massa;
  .Selecionar as opções do menu ao indicar o número referente a qual extensão quer fazer a compressão/descompactação;
  .Ao indicar a extensão, será necessário colocar o caminho correto dos arquivos - a pasta em que se encontram - ou deixar em branco caso o script já esteja na mesma pasta dos arquivos. Importante colocar o caminho completo, desde a home do usuário [ <exemplo> ' /home/usuario/Downloads ' ];
  .Pronto, processo finalizado.
  -Algumas extensões foram desenvolvidas para serem complementares e por isso sua função pode ser diferente (ex: gz em arquivo tar: .tar.gz). Esses tipos de extensões não são legais para compactação em massa (para o uso dela pura), ao usar essa opção irá compactar um de cada vez com seus respectivos nomes [otimo pra completar um .tar];
  
"
    sleep 1.2s
    echo "Voltar (1) ou Home (2)"
    read i
    if [[ $i = 1 ]];then
    sleep 1.5s
    clear
    descompactar
    elif [[ $i = 2 ]];then
    sleep 1.5s
    clear
    home
     else
     echo "Comando não reconhecido. Voltando..."
    sleep 1s 
    home
    fi
  
  else
  echo "

Voltando..."
  sleep 2s
  clear
  descompactar
  fi
            ;;
      esac
    done

}
descompactar



else
    echo "
 ------- 
  ERROR
 -------
> Resposta inválida
Opção não reconhecida."
    sleep 0.5s
    echo "
Deseja abrir a opção de ajuda rápida? (s) sim  (n) não"
    read resp
      if [[ $resp = s ]];then
     echo "
      :::::::::::::::::::::    
        FastHELP -- ConDex 
      :::::::::::::::::::::

  .Pressionar as teclas corretas indicadas para entrar no menu (c/D) - respeitando se é maiúsculo ou minúsculo - para escolher se quer Compactar(c) ou Descompactar(D) os arquivos em massa;
  .Selecionar as opções do menu ao indicar o número referente a qual extensão quer fazer a compressão/descompactação;
  .Ao indicar a extensão, será necessário colocar o caminho correto dos arquivos - a pasta em que se encontram - ou deixar em branco caso o script já esteja na mesma pasta dos arquivos. Importante colocar o caminho completo, desde a home do usuário [ <exemplo> ' /home/usuario/Downloads ' ];
  .Pronto, processo concluído!!
  -Algumas extensões foram desenvolvidas para serem complementares e por isso sua função pode ser diferente (ex: gz em arquivo tar: .tar.gz). Esses tipos de extensões não são legais para compactação em massa (para o uso dela pura), ao usar essa opção irá compactar um de cada vez com seus respectivos nomes [otimo pra completar um .tar];
  "
    sleep 0.5s
  echo "
  
  Pressione <ENTER> para voltar"
    read
    sleep 1.2s
    clear
    home
      fi
fi

 }
 home