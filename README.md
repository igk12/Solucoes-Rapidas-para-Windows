# Solucoes-Rapidas-para-Windows

Este é um script em lote (.bat) para Windows, projetado para simplificar o gerenciamento de energia e fornecer acesso rápido a diversas ferramentas de suporte e diagnóstico do sistema. Ele foi criado para ajudar usuários a otimizar o desempenho, solucionar problemas de rede, verificar a integridade do sistema e realizar tarefas de manutenção de forma eficiente, tudo através de um menu interativo.

## Funcionalidades Principais
O script oferece um menu principal com as seguintes categorias de ferramentas:

Gerenciamento de Energia: Permite configurar planos de energia, habilitar/desabilitar hibernação e visualizar as configurações atuais.
+ Informações do Sistema: Exibe dados básicos e detalhados sobre o hardware e software do seu computador.
+ Ferramentas de Rede e Internet: Inclui opções para diagnosticar problemas de conectividade, limpar cache DNS e testar a velocidade da internet.
+ Abrir Ferramentas do Sistema: Oferece atalhos para ferramentas administrativas importantes do Windows, como o Editor de Registro e o Gerenciador de Dispositivos.
+ Verificar Integridade do Sistema: Ajuda a escanear e reparar arquivos e a imagem do sistema.
+ Limpeza e Otimização: Ferramentas para liberar espaço em disco, limpando arquivos temporários, cache de atualização e a lixeira.
Diagnóstico e Monitoramento: Acesso a monitores de desempenho e confiabilidade, além de uma ferramenta de diagnóstico de memória.
+ Manutenção Avançada: Opções para criar pontos de restauração do sistema, verificar discos e acessar o Windows Update.
+ Configurações de Exibição de Arquivos: Permite controlar a visibilidade de extensões e arquivos/pastas ocultos.
+ Ações do Sistema: Atalhos para reiniciar, bloquear ou desligar o computador.
  
## Requisitos
+ Sistema Operacional: Windows (testado em versões modernas como Windows 10/11).
+ Privilégios: O script deve ser executado como Administrador. Ao tentar executá-lo, o Windows solicitará permissão de administrador. Se não for executado como administrador, o script exibirá uma mensagem de erro e será encerrado.
  
## Como Usar
1. Baixe o arquivo .bat para o seu computador.
2. Clique com o botão direito do mouse no arquivo .bat e selecione "Executar como administrador".
3. Um console de comando será aberto com o menu principal.
4. Digite o número correspondente à opção desejada e pressione Enter.
5. Siga as instruções na tela para cada ferramenta.
6. Para voltar ao menu principal, escolha a opção "Voltar ao Menu Principal" (ou similar) nos sub-menus.
7. Para sair do script, escolha a opção "Sair" no menu principal.

## Observações Importantes e Riscos
+ Execução como Administrador: Muitas das ações realizadas por este script modificam configurações do sistema ou acessam áreas restritas do Windows. A execução como administrador é essencial e garante que as operações sejam concluídas com sucesso.
+ Modificações no Sistema: Algumas opções (como as de gerenciamento de energia, editor de registro, CHKDSK, DISM, limpeza da lixeira) fazem alterações diretas no sistema. Sempre entenda o que cada opção faz antes de executá-la.
+ Reinicialização do Explorer: As opções de "Configurações de Exibição de Arquivos" reiniciam o processo do Windows Explorer. Isso fechará todas as janelas do Explorador de Arquivos abertas.
+ Reinicialização/Desligamento do PC: As opções de "Ações do Sistema" para reiniciar ou desligar o computador são imediatas. Salve todo o seu trabalho antes de usá-las.
+ CHKDSK e Diagnóstico de Memória: O CHKDSK (Verificar Disco) e o Diagnóstico de Memória do Windows podem agendar verificações que exigem uma reinicialização do sistema e podem levar um tempo considerável para serem concluídas.
+ Conexão com a Internet: Ferramentas como DISM (Restaurar Integridade do Sistema) e o teste de velocidade da internet requerem uma conexão ativa com a internet.

## Contato
> Este projeto foi desenvolvido por Igor Cardoso.
> Sinta-se à vontade para se conectar comigo no LinkedIn: [in/igor.cardoso86](https://www.linkedin.com/in/igorcardoso86/)


