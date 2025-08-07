@echo off
title Configurador Rapido de Energia e Ferramentas de Suporte
color 0A
setlocal enabledelayedexpansion

:: Verifica se o script esta sendo executado como administrador
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo.
    echo ====================================================================
    echo ERRO: Este script precisa ser executado como ADMINISTRADOR.
    echo Por favor, clique com o botao direito no arquivo e selecione
    echo "Executar como administrador".
    echo ====================================================================
    echo.
    pause
    exit /b
)

:: Ponto de retorno global para os sub-menus
:RETURN_TO_MAIN_MENU
goto MAIN_MENU

:: Menu Principal
:MAIN_MENU
cls
echo.
echo ====================================================================
echo CONFIGURADOR DE ENERGIA E FERRAMENTAS DE SUPORTE
echo Criado por Igor - https://www.linkedin.com/in/igorcardoso86/
echo ====================================================================
echo.
echo 1 - Gerenciamento de Energia
echo 2 - Informacoes do Sistema
echo 3 - Ferramentas de Rede e Internet
echo 4 - Abrir Ferramentas do Sistema
echo 5 - Verificar Integridade do Sistema
echo 6 - Limpeza e Otimizacao
echo 7 - Diagnostico e Monitoramento
echo 8 - Manutencao Avancada
echo 9 - Configuracoes de Exibicao de Arquivos
echo 10 - Acoes do Sistema
echo 11 - Sair
echo.
set /p opcao=Escolha uma opcao (1-11):
if "%opcao%"=="1" goto MENU_GERENCIAMENTO_ENERGIA
if "%opcao%"=="2" goto INFO_DETALHADAS_SISTEMA
if "%opcao%"=="3" goto MENU_REDE_INTERNET
if "%opcao%"=="4" goto MENU_ABRIR_FERRAMENTAS_SISTEMA
if "%opcao%"=="5" goto MENU_INTEGRIDADE_SISTEMA
if "%opcao%"=="6" goto MENU_LIMPEZA_OTIMIZACAO
if "%opcao%"=="7" goto MENU_DIAGNOSTICO_MONITORAMENTO
if "%opcao%"=="8" goto MENU_MANUTENCAO_AVANCADA
if "%opcao%"=="9" goto MENU_CONFIG_EXIBICAO_ARQUIVOS
if "%opcao%"=="10" goto MENU_ACOES_SISTEMA
if "%opcao%"=="11" goto SAIR
echo Opcao invalida!
pause
goto MAIN_MENU

:: Sub-menu: Gerenciamento de Energia
:MENU_GERENCIAMENTO_ENERGIA
cls
echo.
echo ======================================
echo GERENCIAMENTO DE ENERGIA
echo ======================================
echo.
echo 1 - Configurar tempos de energia (personalizado)
echo 2 - Modo Alto Desempenho (nunca hibernar/desligar)
echo 3 - Modo Economia (tempos curtos)
echo 4 - Desabilitar hibernacao completamente
echo 5 - Habilitar hibernacao
echo 6 - Ver configuracoes atuais de energia
echo 7 - Restaurar configuracoes padrao de energia
echo 8 - Voltar ao Menu Principal
echo.
set /p opcao=Escolha uma opcao (1-8):
if "%opcao%"=="1" goto PERSONALIZADO
if "%opcao%"=="2" goto ALTO_DESEMPENHO
if "%opcao%"=="3" goto ECONOMIA
if "%opcao%"=="4" goto DESABILITAR_HIB
if "%opcao%"=="5" goto HABILITAR_HIB
if "%opcao%"=="6" goto VER_CONFIG
if "%opcao%"=="7" goto RESTAURAR
if "%opcao%"=="8" goto RETURN_TO_MAIN_MENU
echo Opcao invalida!
pause
goto MENU_GERENCIAMENTO_ENERGIA

:: Sub-menu: Informacoes do Sistema
:MENU_INFO_SISTEMA
cls
echo.
echo ======================================
echo INFORMACOES DO SISTEMA
echo ======================================
echo.
echo 1 - Informacoes Basicas do Sistema
echo 2 - Informacoes Detalhadas do Sistema (msinfo32/dxdiag)
echo 3 - Voltar ao Menu Principal
echo.
set /p opcao=Escolha uma opcao (1-3):
if "%opcao%"=="1" goto INFO_BASICAS_SISTEMA
if "%opcao%"=="2" goto INFO_DETALHADAS_SISTEMA
if "%opcao%"=="3" goto RETURN_TO_MAIN_MENU
echo Opcao invalida!
pause
goto MENU_INFO_SISTEMA

:INFO_BASICAS_SISTEMA
cls
echo.
echo ======================================
echo INFORMACOES BASICAS DO SISTEMA
echo ======================================
echo.
systeminfo | findstr /B /C:"Nome do host:" /C:"Nome do SO:" /C:"Versao do SO:" /C:"Fabricante do SO:" /C:"Configuracao de compilacao do SO:" /C:"Tipo de compilacao do SO:" /C:"Processador(es):" /C:"Memoria fisica total:" /C:"Memoria fisica disponivel:" /C:"Placa(s) de rede:" /C:"Dominio:" /C:"Servidor de logon:"
echo.
pause
goto MENU_INFO_SISTEMA

:INFO_DETALHADAS_SISTEMA
cls
echo.
echo ======================================
echo INFORMACOES DETALHADAS DO SISTEMA
echo ======================================
echo.
echo 1 - Abrir Informacoes do Sistema (msinfo32)
echo 2 - Abrir Ferramenta de Diagnostico do DirectX (dxdiag)
echo 3 - Voltar ao Menu Principal
echo.
set /p sub_opcao=Escolha uma opcao (1-3):
if "%sub_opcao%"=="1" (
    echo Abrindo msinfo32...
    start msinfo32
) else if "%sub_opcao%"=="2" (
    echo Abrindo dxdiag...
    start dxdiag
)else if "%sub_opcao%"=="3" (
    echo Voltando para o menu anterior...
    goto RETURN_TO_MAIN_MENU

) else (
    echo Opcao invalida!
)
echo.
pause
goto MENU_INFO_SISTEMA

:: Sub-menu: Ferramentas de Rede e Internet
:MENU_REDE_INTERNET
cls
echo.
echo ======================================
echo FERRAMENTAS DE REDE E INTERNET
echo ======================================
echo.
echo 1 - Ver Placas de Rede Ativas (Completo)
echo 2 - Liberar e Renovar IP
echo 3 - Limpar Cache DNS
echo 4 - Exibir Cache DNS
echo 5 - Testar Conectividade (Ping Google)
echo 6 - Testar Velocidade da Internet (Abrir Navegador)
echo 7 - Rastrear Rota (Tracert Google)
echo 8 - Voltar ao Menu Principal
echo.
set /p opcao=Escolha uma opcao (1-8):
if "%opcao%"=="1" goto VER_PLACAS_REDE
if "%opcao%"=="2" goto LIBERAR_RENOVAR_IP
if "%opcao%"=="3" goto LIMPAR_CACHE_DNS
if "%opcao%"=="4" goto EXIBIR_CACHE_DNS
if "%opcao%"=="5" goto TESTAR_CONECTIVIDADE
if "%opcao%"=="6" goto TESTAR_VELOCIDADE_INTERNET
if "%opcao%"=="7" goto RASTREAR_ROTA
if "%opcao%"=="8" goto RETURN_TO_MAIN_MENU
echo Opcao invalida!
pause
goto MENU_REDE_INTERNET

:VER_PLACAS_REDE
cls
echo.
echo ======================================
echo PLACAS DE REDE ATIVAS (COMPLETO)
echo ======================================
echo.
ipconfig /all
echo.
pause
goto MENU_REDE_INTERNET

:LIBERAR_RENOVAR_IP
cls
echo.
echo ======================================
echo LIBERAR E RENOVAR IP
echo ======================================
echo.
echo Liberando IP...
ipconfig /release
echo Renovando IP...
ipconfig /renew
echo.
echo Operacao concluida.
pause
goto MENU_REDE_INTERNET

:LIMPAR_CACHE_DNS
cls
echo.
echo ======================================
echo LIMPAR CACHE DNS
echo ======================================
echo.
ipconfig /flushdns
echo.
echo Cache DNS limpo com sucesso!
pause
goto MENU_REDE_INTERNET

:EXIBIR_CACHE_DNS
cls
echo.
echo ======================================
echo EXIBIR CACHE DNS
echo ======================================
echo.
ipconfig /displaydns
echo.
pause
goto MENU_REDE_INTERNET

:TESTAR_CONECTIVIDADE
cls
echo.
echo ======================================
echo TESTAR CONECTIVIDADE (PING GOOGLE)
echo ======================================
echo.
ping google.com
echo.
pause
goto MENU_REDE_INTERNET

:TESTAR_VELOCIDADE_INTERNET
cls
echo.
echo ======================================
echo TESTAR VELOCIDADE DA INTERNET
echo ======================================
echo.
echo Abrindo navegador para teste de velocidade...
start https://fast.com
echo.
echo Por favor, aguarde o site carregar no seu navegador.
pause
goto MENU_REDE_INTERNET

:RASTREAR_ROTA
cls
echo.
echo ======================================
echo RASTREAR ROTA (TRACERT GOOGLE)
echo ======================================
echo.
tracert google.com
echo.
pause
goto MENU_REDE_INTERNET

:: Sub-menu: Abrir Ferramentas do Sistema
:MENU_ABRIR_FERRAMENTAS_SISTEMA
cls
echo.
echo ======================================
echo ABRIR FERRAMENTAS DO SISTEMA
echo ======================================
echo.
echo 1 - Variaveis de Ambiente
echo 2 - Editor de Registro (Regedit)
echo 3 - Gerenciamento de Disco
echo 4 - Gerenciador de Dispositivos
echo 5 - Gerenciador de Tarefas
echo 6 - Visualizador de Eventos
echo 7 - Configuracao do Sistema (MSConfig)
echo 8 - Servicos
echo 9 - Voltar ao Menu Principal
echo.
set /p opcao=Escolha uma opcao (1-9):
if "%opcao%"=="1" goto ABRIR_VARIAVEIS_AMBIENTE
if "%opcao%"=="2" goto ABRIR_REGEDIT
if "%opcao%"=="3" goto ABRIR_GERENCIAMENTO_DISCO
if "%opcao%"=="4" goto ABRIR_GERENCIADOR_DISPOSITIVOS
if "%opcao%"=="5" goto ABRIR_GERENCIADOR_TAREFAS
if "%opcao%"=="6" goto ABRIR_VISUALIZADOR_EVENTOS
if "%opcao%"=="7" goto ABRIR_MSCONFIG
if "%opcao%"=="8" goto ABRIR_SERVICOS
if "%opcao%"=="9" goto RETURN_TO_MAIN_MENU
echo Opcao invalida!
pause
goto MENU_ABRIR_FERRAMENTAS_SISTEMA

:ABRIR_VARIAVEIS_AMBIENTE
cls
echo.
echo ======================================
echo ABRIR VARIAVEIS DE AMBIENTE
echo ======================================
echo.
echo Abrindo Variaveis de Ambiente...
start systempropertiesadvanced.exe
echo.
pause
goto MENU_ABRIR_FERRAMENTAS_SISTEMA

:ABRIR_REGEDIT
cls
echo.
echo ======================================
echo ABRIR EDITOR DE REGISTRO
echo ======================================
echo.
echo Abrindo Regedit...
start regedit
echo.
pause
goto MENU_ABRIR_FERRAMENTAS_SISTEMA

:ABRIR_GERENCIAMENTO_DISCO
cls
echo.
echo ======================================
echo ABRIR GERENCIAMENTO DE DISCO
echo ======================================
echo.
echo Abrindo Gerenciamento de Disco...
start diskmgmt.msc
echo.
pause
goto MENU_ABRIR_FERRAMENTAS_SISTEMA

:ABRIR_GERENCIADOR_DISPOSITIVOS
cls
echo.
echo ======================================
echo ABRIR GERENCIADOR DE DISPOSITIVOS
echo ======================================
echo.
echo Abrindo Gerenciador de Dispositivos...
start devmgmt.msc
echo.
pause
goto MENU_ABRIR_FERRAMENTAS_SISTEMA

:ABRIR_GERENCIADOR_TAREFAS
cls
echo.
echo ======================================
echo ABRIR GERENCIADOR DE TAREFAS
echo ======================================
echo.
echo Abrindo Gerenciador de Tarefas...
start taskmgr
echo.
pause
goto MENU_ABRIR_FERRAMENTAS_SISTEMA

:ABRIR_VISUALIZADOR_EVENTOS
cls
echo.
echo ======================================
echo ABRIR VISUALIZADOR DE EVENTOS
echo ======================================
echo.
echo Abrindo Visualizador de Eventos...
start eventvwr.msc
echo.
pause
goto MENU_ABRIR_FERRAMENTAS_SISTEMA

:ABRIR_MSCONFIG
cls
echo.
echo ======================================
echo ABRIR CONFIGURACAO DO SISTEMA (MSCONFIG)
echo ======================================
echo.
echo Abrindo Configuracao do Sistema...
start msconfig
echo.
pause
goto MENU_ABRIR_FERRAMENTAS_SISTEMA

:ABRIR_SERVICOS
cls
echo.
echo ======================================
echo ABRIR SERVICOS
echo ======================================
echo.
echo Abrindo Servicos...
start services.msc
echo.
pause
goto MENU_ABRIR_FERRAMENTAS_SISTEMA

:: Sub-menu: Verificar Integridade do Sistema
:MENU_INTEGRIDADE_SISTEMA
cls
echo.
echo ======================================
echo VERIFICAR INTEGRIDADE DO SISTEMA
echo ======================================
echo.
echo 1 - Executar SFC (System File Checker)
echo 2 - Executar DISM (Deployment Image Servicing and Management)
echo 3 - Voltar ao Menu Principal
echo.
set /p opcao=Escolha uma opcao (1-3):
if "%opcao%"=="1" goto EXECUTAR_SFC
if "%opcao%"=="2" goto EXECUTAR_DISM
if "%opcao%"=="3" goto RETURN_TO_MAIN_MENU
echo Opcao invalida!
pause
goto MENU_INTEGRIDADE_SISTEMA

:EXECUTAR_SFC
cls
echo.
echo ======================================
echo EXECUTAR SFC (SYSTEM FILE CHECKER)
echo ======================================
echo.
echo Iniciando verificacao de arquivos do sistema (SFC /scannow)...
echo Isso pode levar algum tempo. Nao feche a janela.
sfc /scannow
echo.
echo Verificacao SFC concluida.
pause
goto MENU_INTEGRIDADE_SISTEMA

:EXECUTAR_DISM
cls
echo.
echo ======================================
echo EXECUTAR DISM (DEPLOYMENT IMAGE SERVICING AND MANAGEMENT)
echo ======================================
echo.
echo Iniciando verificacao e reparo da imagem do sistema (DISM)...
echo Isso pode levar algum tempo. Nao feche a janela.
DISM /Online /Cleanup-Image /RestoreHealth
echo.
echo Operacao DISM concluida.
pause
goto MENU_INTEGRIDADE_SISTEMA

:: Sub-menu: Limpeza e Otimizacao
:MENU_LIMPEZA_OTIMIZACAO
cls
echo.
echo ======================================
echo LIMPEZA E OTIMIZACAO
echo ======================================
echo.
echo 1 - Limpeza de Disco
echo 2 - Limpar Arquivos Temporarios
echo 3 - Esvaziar Lixeira
echo 4 - Voltar ao Menu Principal
echo.
set /p opcao=Escolha uma opcao (1-4):
if "%opcao%"=="1" goto LIMPEZA_DISCO
if "%opcao%"=="2" goto LIMPAR_ARQUIVOS_TEMPORARIOS
if "%opcao%"=="3" goto ESVAZIAR_LIXEIRA
if "%opcao%"=="4" goto RETURN_TO_MAIN_MENU
echo Opcao invalida!
pause
goto MENU_LIMPEZA_OTIMIZACAO

:LIMPEZA_DISCO
cls
echo.
echo ======================================
echo LIMPEZA DE DISCO
echo ======================================
echo.
echo Abrindo a ferramenta de Limpeza de Disco...
cleanmgr.exe
echo.
pause
goto MENU_LIMPEZA_OTIMIZACAO

:LIMPAR_ARQUIVOS_TEMPORARIOS
cls
echo.
echo ======================================
echo LIMPAR ARQUIVOS TEMPORARIOS
echo ======================================
echo.
echo Limpando arquivos temporarios...
del /q /f /s %TEMP%\*
echo.
echo Arquivos temporarios limpos.
pause
goto MENU_LIMPEZA_OTIMIZACAO

:ESVAZIAR_LIXEIRA
cls
echo.
echo ======================================
echo ESVAZIAR LIXEIRA
echo ======================================
echo.
echo Esvaziando a Lixeira...
:: Este comando esvazia a lixeira do usuario atual na unidade C:.
:: Para esvaziar para todos os usuarios ou outras unidades, a logica seria mais complexa.
rd /s /q C:\$Recycle.Bin
echo.
echo Lixeira esvaziada.
pause
goto MENU_LIMPEZA_OTIMIZACAO

:: Sub-menu: Diagnostico e Monitoramento
:MENU_DIAGNOSTICO_MONITORAMENTO
cls
echo.
echo ======================================
echo DIAGNOSTICO E MONITORAMENTO
echo ======================================
echo.
echo 1 - Verificar Espaco em Disco
echo 2 - Ver Processos em Execucao
echo 3 - Ver Uso de CPU e Memoria
echo 4 - Ver Programas Instalados
echo 5 - Ver Status do Antivirus
echo 6 - Voltar ao Menu Principal
echo.
set /p opcao=Escolha uma opcao (1-6):
if "%opcao%"=="1" goto VER_ESPACO_DISCO
if "%opcao%"=="2" goto VER_PROCESSOS
if "%opcao%"=="3" goto VER_USO_CPU_MEMORIA
if "%opcao%"=="4" goto VER_PROGRAMAS_INSTALADOS
if "%opcao%"=="5" goto VER_STATUS_ANTIVIRUS
if "%opcao%"=="6" goto RETURN_TO_MAIN_MENU
echo Opcao invalida!
pause
goto MENU_DIAGNOSTICO_MONITORAMENTO

:VER_ESPACO_DISCO
cls
echo.
echo ======================================
echo VERIFICAR ESPACO EM DISCO
echo ======================================
echo.
wmic logicaldisk get caption,freespace,size
echo.
pause
goto MENU_DIAGNOSTICO_MONITORAMENTO

:VER_PROCESSOS
cls
echo.
echo ======================================
echo VER PROCESSOS EM EXECUCAO
echo ======================================
echo.
tasklist
echo.
pause
goto MENU_DIAGNOSTICO_MONITORAMENTO

:VER_USO_CPU_MEMORIA
cls
echo.
echo ======================================
echo VER USO DE CPU E MEMORIA
echo ======================================
echo.
echo Para uma visao detalhada, o Gerenciador de Tarefas sera aberto.
echo.
start taskmgr
echo.
pause
goto MENU_DIAGNOSTICO_MONITORAMENTO

:VER_PROGRAMAS_INSTALADOS
cls
echo.
echo ======================================
echo VER PROGRAMAS INSTALADOS
echo ======================================
echo.
wmic product get name,version
echo.
pause
goto MENU_DIAGNOSTICO_MONITORAMENTO

:VER_STATUS_ANTIVIRUS
cls
echo.
echo ======================================
echo VER STATUS DO ANTIVIRUS
echo ======================================
echo.
echo Abrindo as configuracoes de Seguranca do Windows...
start windowsdefender:
echo.
pause
goto MENU_DIAGNOSTICO_MONITORAMENTO

:: Sub-menu: Manutencao Avancada
:MENU_MANUTENCAO_AVANCADA
cls
echo.
echo ======================================
echo MANUTENCAO AVANCADA
echo ======================================
echo.
echo 1 - Criar Ponto de Restauracao
echo 2 - Verificar Disco (CHKDSK)
echo 3 - Abrir Windows Update
echo 4 - Otimizar Unidades (Desfragmentar/TRIM)
echo 5 - Voltar ao Menu Principal
echo.
set /p opcao=Escolha uma opcao (1-5):
if "%opcao%"=="1" goto CRIAR_PONTO_RESTAURACAO
if "%opcao%"=="2" goto VERIFICAR_DISCO
if "%opcao%"=="3" goto ABRIR_WINDOWS_UPDATE
if "%opcao%"=="4" goto OTIMIZAR_UNIDADES
if "%opcao%"=="5" goto RETURN_TO_MAIN_MENU
echo Opcao invalida!
pause
goto MENU_MANUTENCAO_AVANCADA

:OTIMIZAR_UNIDADES
cls
echo.
echo ======================================
echo OTIMIZAR UNIDADES (DESFRAGMENTAR/TRIM)
echo ======================================
echo.
echo Abrindo a ferramenta de Otimizacao de Unidades...
start dfrgui.exe
echo.
echo Use esta ferramenta para desfragmentar HDDs ou otimizar SSDs (TRIM).
pause
goto MENU_MANUTENCAO_AVANCADA

:: Sub-menu: Configuracoes de Exibicao de Arquivos
:MENU_CONFIG_EXIBICAO_ARQUIVOS
cls
echo.
echo ======================================
echo CONFIGURACOES DE EXIBICAO DE ARQUIVOS
echo ======================================
echo.
echo 1 - Exibir Extensoes de Arquivos
echo 2 - Ocultar Extensoes de Arquivos
echo 3 - Exibir Pastas e Arquivos Ocultos
echo 4 - Ocultar Pastas e Arquivos Ocultos
echo 5 - Voltar ao Menu Principal
echo.
set /p opcao_exibicao=Escolha uma opcao (1-5):
if "%opcao_exibicao%"=="1" goto EXIBIR_EXTENSOES
if "%opcao_exibicao%"=="2" goto OCULTAR_EXTENSOES
if "%opcao_exibicao%"=="3" goto OCULTAR_OCULTOS
if "%opcao_exibicao%"=="4" goto EXIBIR_OCULTOS
if "%opcao_exibicao%"=="5" goto RETURN_TO_MAIN_MENU
echo Opcao invalida!
pause
goto MENU_CONFIG_EXIBICAO_ARQUIVOS

:: Sub-menu: Acoes do Sistema
:MENU_ACOES_SISTEMA
cls
echo.
echo ======================================
echo ACOES DO SISTEMA
echo ======================================
echo.
echo 1 - Reiniciar PC
echo 2 - Bloquear Tela
echo 3 - Desligar PC
echo 4 - Reiniciar Explorer
echo 5 - Voltar ao Menu Principal
echo.
set /p opcao=Escolha uma opcao (1-5):
if "%opcao%"=="1" goto REINICIAR
if "%opcao%"=="2" goto BLOQUEAR
if "%opcao%"=="3" goto DESLIGAR
if "%opcao%"=="4" goto REINICIAR_EXPLORER
if "%opcao%"=="5" goto RETURN_TO_MAIN_MENU
echo Opcao invalida!
pause
goto MENU_ACOES_SISTEMA

:REINICIAR_EXPLORER
cls
echo.
echo ======================================
echo REINICIAR EXPLORER
echo ======================================
echo.
echo Reiniciando o processo Explorer.exe...
taskkill /f /im explorer.exe & start explorer.exe
echo.
echo Explorer reiniciado.
pause
goto MENU_ACOES_SISTEMA

:: Funcoes de Gerenciamento de Energia (mantidas do script original)
:PERSONALIZADO
cls
echo.
echo ======================================
echo CONFIGURACAO PERSONALIZADA
echo ======================================
echo.
echo Digite os tempos em MINUTOS (0 = nunca, x = nao alterar):
echo.
set /p monitor=Tempo para desligar monitor (x para manter atual):
set /p disk=Tempo para desligar disco rigido (x para manter atual):
set /p sleep=Tempo para suspensao/descanso (x para manter atual):
set /p hibernate=Tempo para hibernacao (x para manter atual):
echo.
echo Aplicando configuracoes...
if /i "%monitor%"=="x" (
echo - Monitor: mantendo configuracao atual
) else (
if "%monitor%"=="0" (
powercfg -change -monitor-timeout-ac 0
powercfg -change -monitor-timeout-dc 0
) else (
powercfg -change -monitor-timeout-ac %monitor%
powercfg -change -monitor-timeout-dc %monitor%
)
echo - Monitor: configurado para %monitor% minutos
)
if /i "%disk%"=="x" (
echo - Disco rigido: mantendo configuracao atual
) else (
if "%disk%"=="0" (
powercfg -change -disk-timeout-ac 0
powercfg -change -disk-timeout-dc 0
) else (
powercfg -change -disk-timeout-ac %disk%
powercfg -change -disk-timeout-dc %disk%
)
echo - Disco rigido: configurado para %disk% minutos
)
if /i "%sleep%"=="x" (
echo - Suspensao: mantendo configuracao atual
) else (
if "%sleep%"=="0" (
powercfg -change -standby-timeout-ac 0
powercfg -change -standby-timeout-dc 0
) else (
powercfg -change -standby-timeout-ac %sleep%
powercfg -change -standby-timeout-dc %sleep%
)
echo - Suspensao: configurado para %sleep% minutos
)
if /i "%hibernate%"=="x" (
echo - Hibernacao: mantendo configuracao atual
) else (
if "%hibernate%"=="0" (
powercfg -change -hibernate-timeout-ac 0
powercfg -change -hibernate-timeout-dc 0
) else (
powercfg -change -hibernate-timeout-ac %hibernate%
powercfg -change -hibernate-timeout-dc %hibernate%
)
echo - Hibernacao: configurado para %hibernate% minutos
)
echo.
echo Configuracoes aplicadas com sucesso!
pause
goto MENU_GERENCIAMENTO_ENERGIA

:ALTO_DESEMPENHO
cls
echo Aplicando modo Alto Desempenho...
powercfg -change -monitor-timeout-ac 30
powercfg -change -monitor-timeout-dc 15
powercfg -change -disk-timeout-ac 0
powercfg -change -disk-timeout-dc 0
powercfg -change -standby-timeout-ac 0
powercfg -change -standby-timeout-dc 0
powercfg -change -hibernate-timeout-ac 0
powercfg -change -hibernate-timeout-dc 0
echo Modo Alto Desempenho aplicado!
echo - Monitor: 30 min (AC) / 15 min (bateria)
echo - Disco: nunca desligar
echo - Suspensao: nunca
echo - Hibernacao: nunca
pause
goto MENU_GERENCIAMENTO_ENERGIA

:ECONOMIA
cls
echo Aplicando modo Economia...
powercfg -change -monitor-timeout-ac 10
powercfg -change -monitor-timeout-dc 5
powercfg -change -disk-timeout-ac 20
powercfg -change -disk-timeout-dc 10
powercfg -change -standby-timeout-ac 15
powercfg -change -standby-timeout-dc 10
powercfg -change -hibernate-timeout-ac 30
powercfg -change -hibernate-timeout-dc 20
echo Modo Economia aplicado!
echo - Monitor: 10 min (AC) / 5 min (bateria)
echo - Disco: 20 min (AC) / 10 min (bateria)
echo - Suspensao: 15 min (AC) / 10 min (bateria)
echo - Hibernacao: 30 min (AC) / 20 min (bateria)
pause
goto MENU_GERENCIAMENTO_ENERGIA

:DESABILITAR_HIB
cls
echo Desabilitando hibernacao...
powercfg -change -hibernate-timeout-dc 0
powercfg -h off
echo Hibernacao desabilitada!
echo (Isso libera espaco em disco igual ao tamanho da RAM)
pause
goto MENU_GERENCIAMENTO_ENERGIA

:HABILITAR_HIB
cls
echo Habilitando hibernacao...
powercfg -change -hibernate-timeout-dc 60
powercfg -change -hibernate-timeout-ac 60
echo Hibernacao habilitada! Configurado 60 minutos para Hibernação.
echo Quer mudar o tempo de hibernação, acesse o menu "1 - Configurar tempos de energia (personalizado)"
pause
goto MENU_GERENCIAMENTO_ENERGIA

:VER_CONFIG
cls
echo.
echo ======================================
echo CONFIGURACOES ATUAIS DE ENERGIA
echo ======================================
echo.

echo ======================================
echo DESLIGAR TELA
echo ======================================
echo.

:: AC (Plugado na tomada):
set "ac_display_off="
for /f "tokens=8" %%a in ('powercfg /query SCHEME_CURRENT SUB_VIDEO VIDEOIDLE ^| findstr "Correntes Alternadas Atuais"') do (
    for /f %%b in ('powershell -Command "try{[Convert]::ToInt32('%%a', 16)}catch{0}"') do (
        if %%b==0 (
            echo Configuracao: NUNCA desligar
        ) else if %%b==4294967295 (
            set "ac_display_off=INFINITO/NUNCA desligar"
        ) else (
            set /a minutos=%%b/60
            set /a resto=%%b%%60
            if !resto!==0 (
                set "ac_display_off=!minutos! minutos"
            ) else (
                set "ac_display_off=!minutos! min e !resto! seg"
            )
        )
    )
)
echo AC (Plugado na tomada):
echo Configuracao: %ac_display_off%
echo.

:: DC (Na bateria):
set "dc_display_off="
for /f "tokens=8" %%a in ('powercfg /query SCHEME_CURRENT SUB_VIDEO VIDEOIDLE ^| findstr "Correntes Contínuas Atuais"') do (
    for /f %%b in ('powershell -Command "try{[Convert]::ToInt32('%%a', 16)}catch{0}"') do (
        if %%b==0 (
            set "dc_display_off=NUNCA desligar"
        ) else if %%b==4294967295 (
            set "dc_display_off=INFINITO/NUNCA desligar"
        ) else (
            set /a minutos=%%b/60
            set /a resto=%%b%%60
            if !resto!==0 (
                set "dc_display_off=!minutos! minutos"
            ) else (
                set "dc_display_off=!minutos! min e !resto! seg"
            )
        )
    )
)
echo DC (Na bateria):
echo Configuracao: %dc_display_off%
echo.

echo ======================================
echo DESLIGAR DISCO RIGIDO
echo ======================================
echo.

:: AC (Plugado na tomada):
set "ac_disk_idle="
for /f "tokens=8" %%c in ('powercfg /query SCHEME_CURRENT SUB_DISK DISKIDLE ^| findstr "Correntes Alternadas Atuais"') do (
    for /f %%d in ('powershell -Command "try{[Convert]::ToInt32('%%c', 16)}catch{0}"') do (
        if %%d==0 (
            set "ac_disk_idle=NUNCA desligar"
        ) else if %%d==4294967295 (
            set "ac_disk_idle=INFINITO/NUNCA desligar"
        ) else (
            set /a minutos=%%d/60
            set /a resto=%%d%%60
            if !resto!==0 (
                set "ac_disk_idle=!minutos! minutos"
            ) else (
                set "ac_disk_idle=!minutos! min e !resto! seg"
            )
        )
    )
)
echo AC (Plugado na tomada):
echo Configuracao: %ac_disk_idle%
echo.

:: DC (Na bateria):
set "dc_disk_idle="
for /f "tokens=8" %%c in ('powercfg /query SCHEME_CURRENT SUB_DISK DISKIDLE ^| findstr "Correntes Continuas Atuais"') do (
    for /f %%d in ('powershell -Command "try{[Convert]::ToInt32('%%c', 16)}catch{0}"') do (
        if %%d==0 (
            set "dc_disk_idle=NUNCA desligar"
        ) else if %%d==4294967295 (
            set "dc_disk_idle=INFINITO/NUNCA desligar"
        ) else (
            set /a minutos=%%d/60
            set /a resto=%%d%%60
            if !resto!==0 (
                set "dc_disk_idle=!minutos! minutos"
            ) else (
                set "dc_disk_idle=!minutos! min e !resto! seg"
            )
        )
    )
)
echo DC (Na bateria):
echo Configuracao: %dc_disk_idle%
echo.

echo ======================================
echo SUSPENSAO/DESCANSO
echo ======================================
echo.

:: AC (Plugado na tomada):
set "ac_standby_idle="
for /f "tokens=8" %%e in ('powercfg /query SCHEME_CURRENT SUB_SLEEP STANDBYIDLE ^| findstr "Correntes Alternadas Atuais"') do (
    for /f %%f in ('powershell -Command "try{[Convert]::ToInt32('%%e', 16)}catch{0}"') do (
        if %%f==0 (
            set "ac_standby_idle=NUNCA suspender"
        ) else if %%f==4294967295 (
            set "ac_standby_idle=INFINITO/NUNCA suspender"
        ) else (
            set /a minutos=%%f/60
            set /a resto=%%f%%60
            if !resto!==0 (
                set "ac_standby_idle=!minutos! minutos"
            ) else (
                set "ac_standby_idle=!minutos! min e !resto! seg"
            )
        )
    )
)
echo AC (Plugado na tomada):
echo Configuracao: %ac_standby_idle%
echo.

:: DC (Na bateria):
set "dc_standby_idle="
for /f "tokens=8" %%e in ('powercfg /query SCHEME_CURRENT SUB_SLEEP STANDBYIDLE ^| findstr "Correntes Continuas Atuais"') do (
    for /f %%f in ('powershell -Command "try{[Convert]::ToInt32('%%e', 16)}catch{0}"') do (
        if %%f==0 (
            set "dc_standby_idle=NUNCA suspender"
        ) else if %%f==4294967295 (
            set "dc_standby_idle=INFINITO/NUNCA suspender"
        ) else (
            set /a minutos=%%f/60
            set /a resto=%%f%%60
            if !resto!==0 (
                set "dc_standby_idle=!minutos! minutos"
            ) else (
                set "dc_standby_idle=!minutos! min e !resto! seg"
            )
        )
    )
)
echo DC (Na bateria):
echo Configuracao: %dc_standby_idle%
echo.

echo ======================================
echo HIBERNACAO
echo ======================================
echo.

:: AC (Plugado na tomada):
set "ac_hibernate_idle="
for /f "tokens=8" %%g in ('powercfg /query SCHEME_CURRENT SUB_SLEEP HIBERNATEIDLE ^| findstr "Correntes Alternadas Atuais"') do (
    for /f %%h in ('powershell -Command "try{[Convert]::ToInt32('%%g', 16)}catch{0}"') do (
        if %%h==0 (
            set "ac_hibernate_idle=NUNCA hibernar"
        ) else if %%h==4294967295 (
            set "ac_hibernate_idle=INFINITO/NUNCA hibernar"
        ) else (
            set /a minutos=%%h/60
            set /a resto=%%h%%60
            if !resto!==0 (
                set "ac_hibernate_idle=!minutos! minutos"
            ) else (
                set "ac_hibernate_idle=!minutos! min e !resto! seg"
            )
        )
    )
)
echo AC (Plugado na tomada):
echo Configuracao: %ac_hibernate_idle%
echo.

:: DC (Na bateria):
set "dc_hibernate_idle="
for /f "tokens=8" %%g in ('powercfg /query SCHEME_CURRENT SUB_SLEEP HIBERNATEIDLE ^| findstr "Correntes Continuas Atuais"') do (
    for /f %%h in ('powershell -Command "try{[Convert]::ToInt32('%%g', 16)}catch{0}"') do (
        if %%h==0 (
            set "dc_hibernate_idle=NUNCA hibernar"
        ) else if %%h==4294967295 (
            set "dc_hibernate_idle=INFINITO/NUNCA hibernar"
        ) else (
            set /a minutos=%%h/60
            set /a resto=%%h%%60
            if !resto!==0 (
                set "dc_hibernate_idle=!minutos! minutos"
            ) else (
                set "dc_hibernate_idle=!minutos! min e !resto! seg"
            )
        )
    )
)
echo DC (Na bateria):
echo Configuracao: %dc_hibernate_idle%
echo.

pause
goto MENU_GERENCIAMENTO_ENERGIA

:RESTAURAR
cls
echo Restaurando configuracoes padrao de energia...
powercfg -restoredefaultschemes
echo Configuracoes padrao restauradas!
pause
goto MENU_GERENCIAMENTO_ENERGIA

:: Funcoes de Manutencao Avancada (mantidas do script original)
:CRIAR_PONTO_RESTAURACAO
cls
echo.
echo ======================================
echo CRIAR PONTO DE RESTAURACAO
echo ======================================
echo.
echo Criando um ponto de restauracao do sistema...
echo Isso pode levar alguns minutos.
powershell.exe -NoProfile -Command "Checkpoint-Computer -Description 'Ponto de Restauracao Manual via Script' -RestorePointType 'MODIFY_SETTINGS' -ErrorAction Stop; if ($LASTEXITCODE -eq 0) { Write-Host 'Ponto de restauracao criado com sucesso!' } else { Write-Host 'Erro ao criar ponto de restauracao. Certifique-se de que a Protecao do Sistema esta ativada para a unidade do sistema.' }"
echo.
pause
goto MENU_MANUTENCAO_AVANCADA

:VERIFICAR_DISCO
cls
echo.
echo ======================================
echo VERIFICAR DISCO (CHKDSK)
echo ======================================
echo.
echo Esta operacao verificara e tentara corrigir erros no disco C:.
echo Se o disco estiver em uso, a verificacao sera agendada para a proxima inicializacao.
echo.
echo Agendando CHKDSK para a proxima inicializacao...
echo y | chkdsk C: /f /r
echo.
echo CHKDSK agendado para o disco C:.
echo Reinicie o computador para que a verificacao seja executada.
pause
goto MENU_MANUTENCAO_AVANCADA

:ABRIR_WINDOWS_UPDATE
cls
echo.
echo ======================================
echo ABRIR WINDOWS UPDATE
echo ======================================
echo.
echo Abrindo as configuracoes do Windows Update...
start ms-settings:windowsupdate
echo.
echo Configuracoes do Windows Update abertas.
pause
goto MENU_MANUTENCAO_AVANCADA

:: Funcoes de Configuracoes de Exibicao de Arquivos (mantidas do script original)
:EXIBIR_EXTENSOES
cls
echo.
echo ======================================
echo EXIBIR EXTENSOES DE ARQUIVOS
echo ======================================
echo.
echo Configurando para exibir extensoes de arquivos...
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt /t REG_DWORD /d 0 /f >nul
echo Extensoes de arquivos agora estao visiveis.
echo Reiniciando Explorer para aplicar as mudancas...
taskkill /f /im explorer.exe & start explorer.exe
pause
goto MENU_CONFIG_EXIBICAO_ARQUIVOS

:OCULTAR_EXTENSOES
cls
echo.
echo ======================================
echo OCULTAR EXTENSOES DE ARQUIVOS
echo ======================================
echo.
echo Configurando para ocultar extensoes de arquivos...
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt /t REG_DWORD /d 1 /f >nul
echo Extensoes de arquivos agora estao ocultas.
echo Reiniciando Explorer para aplicar as mudancas...
taskkill /f /im explorer.exe & start explorer.exe
pause
goto MENU_CONFIG_EXIBICAO_ARQUIVOS

:EXIBIR_OCULTOS
cls
echo.
echo ======================================
echo EXIBIR PASTAS E ARQUIVOS OCULTOS
echo ======================================
echo.
echo Configurando para exibir pastas e arquivos ocultos...
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden /t REG_DWORD /d 2 /f >nul
echo Pastas e arquivos ocultos agora estao visiveis.
echo Reiniciando Explorer para aplicar as mudancas...
taskkill /f /im explorer.exe & start explorer.exe
pause
goto MENU_CONFIG_EXIBICAO_ARQUIVOS

:OCULTAR_OCULTOS
cls
echo.
echo ======================================
echo OCULTAR PASTAS E ARQUIVOS OCULTOS
echo ======================================
echo.
echo Configurando para ocultar pastas e arquivos ocultos...
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden /t REG_DWORD /d 1 /f >nul
echo Pastas e arquivos ocultos agora estao ocultos.
echo Reiniciando Explorer para aplicar as mudancas...
taskkill /f /im explorer.exe & start explorer.exe
pause
goto MENU_CONFIG_EXIBICAO_ARQUIVOS

:: Funcoes de Acoes do Sistema (mantidas do script original)
:REINICIAR
cls
echo.
echo ======================================
echo REINICIAR PC
echo ======================================
echo.
echo Reiniciando o computador...
shutdown /r /t 0
pause
goto MENU_ACOES_SISTEMA

:BLOQUEAR
cls
echo.
echo ======================================
echo BLOQUEAR TELA
echo ======================================
echo.
echo Bloqueando a tela...
rundll32.exe user32.dll,LockWorkStation
echo.
pause
goto MENU_ACOES_SISTEMA

:DESLIGAR
cls
echo.
echo ======================================
echo DESLIGAR PC
echo ======================================
echo.
echo Desligando o computador...
shutdown /s /t 0
pause
goto MENU_ACOES_SISTEMA

:SAIR
echo Saindo...
exit

