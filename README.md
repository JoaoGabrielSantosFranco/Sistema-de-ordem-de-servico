<h1 class="code-line" data-line-start=0 data-line-end=1 ><a id="Objetivo_do_projeto_0"></a>Objetivo do projeto</h2>
<p class="has-line-data" data-line-start="2" data-line-end="3">O objetivo geral deste software é automatizar o processo de gerenciamento de ordens de serviço, permitindo que a empresa registre, monitore e gerencie todas as informações relacionadas a uma ordem de serviço em um único lugar.</p>
<h2 class="code-line" data-line-start=5 data-line-end=6 ><a id="Fase_1_Anlise_de_requisitos_5"></a>Fase 1: Análise de requisitos</h2>
<h3 class="code-line" data-line-start=7 data-line-end=8 ><a id="Requisitos_Funcionais_7"></a>Requisitos Funcionais:</h3>
<p class="has-line-data" data-line-start="9" data-line-end="10">Cadastro de ordens de serviço: o sistema deve permitir que um funcionário da empresa crie novas ordens de serviço, inserindo informações como o nome do cliente, o tipo de serviço solicitado, a data e hora do serviço, entre outras informações relevantes.</p>
<p class="has-line-data" data-line-start="11" data-line-end="12">Atribuição de tarefas: o sistema deve permitir que um funcionário atribua tarefas específicas a outros funcionários responsáveis pela realização do serviço, além de definir prazos e prioridades.</p>
<p class="has-line-data" data-line-start="13" data-line-end="14">Monitoramento de status: o sistema deve permitir que um funcionário monitore o status de cada ordem de serviço em tempo real, identificando quando o serviço foi iniciado, o andamento das tarefas e quando o serviço foi concluído.</p>
<p class="has-line-data" data-line-start="15" data-line-end="16">Comunicação com clientes: o sistema deve permitir que a empresa se comunique com seus clientes, enviando notificações sobre o status das ordens de serviço.</p>
<h3 class="code-line" data-line-start=22 data-line-end=23 ><a id="Requisitos_No_Funcionais_22"></a>Requisitos Não Funcionais:</h3>
<p class="has-line-data" data-line-start="24" data-line-end="25">Segurança: o sistema deve ser capaz de garantir a segurança dos dados armazenados no banco de dados MySQL. Isso inclui medidas de proteção contra invasões, roubo de dados e vazamento de informações.</p>
<p class="has-line-data" data-line-start="26" data-line-end="27">Performance: o sistema deve ser capaz de lidar com um grande número de transações no banco de dados MySQL e executar operações com alta velocidade. Isso inclui otimização de consultas, indexação de dados e uso de cache.</p>
<p class="has-line-data" data-line-start="28" data-line-end="29">Escalabilidade: o sistema deve ser capaz de lidar com um aumento de volume de dados e usuários sem perder desempenho. Isso inclui dimensionamento horizontal do sistema, replicação de bancos de dados e balanceamento de carga.</p>
<p class="has-line-data" data-line-start="30" data-line-end="31">Usabilidade: o sistema deve ser fácil de usar e intuitivo, com interface do usuário amigável e responsiva. Isso inclui um design atraente, navegação intuitiva e ajuda contextual.</p>
<p class="has-line-data" data-line-start="32" data-line-end="33">Confiabilidade: o sistema deve estar sempre disponível, com alta disponibilidade do servidor web, do banco de dados e do sistema em geral. Isso inclui implementação de monitoramento e alertas, redundância de componentes críticos e backup dos dados.</p>
<p class="has-line-data" data-line-start="34" data-line-end="35">Manutenção: o sistema deve ser fácil de manter e atualizar, com código-fonte limpo, bem documentado e seguindo as boas práticas de programação. Isso inclui o uso de ferramentas de versionamento de código, automação de testes e integração contínua.</p>
<p class="has-line-data" data-line-start="36" data-line-end="37">Interoperabilidade: o sistema deve ser capaz de se integrar com outros sistemas e serviços da empresa, permitindo a troca de informações e a automatização de processos. Isso inclui o uso de APIs bem definidas e protocolos de comunicação padronizados.</p>
<h2 class="code-line" data-line-start=40 data-line-end=41 ><a id="Fase_2_Design_do_sistema_40"></a>Fase 2: Design do sistema</h2>
<p class="has-line-data" data-line-start="42" data-line-end="48">Modelo de dados para o sistema<br>
Tabela: Clientes<br>
id_cliente (chave primária)<br>
nome_cliente<br>
email_cliente<br>
telefone_cliente</p>
<p class="has-line-data" data-line-start="49" data-line-end="54">Tabela: Técnicos<br>
id_tecnico (chave primária)<br>
nome_tecnico<br>
email_tecnico<br>
telefone_tecnico</p>
<p class="has-line-data" data-line-start="55" data-line-end="63">Tabela: Ordens de serviço<br>
id_ordem (chave primária)<br>
id_cliente (chave estrangeira referenciando a tabela Clientes)<br>
id_tecnico (chave estrangeira referenciando a tabela Técnicos)<br>
data_criacao<br>
data_conclusao<br>
descricao_problema<br>
descricao_solucao</p>
<p class="has-line-data" data-line-start="68" data-line-end="69">Diagrama de casos de uso.</p>
<p class="has-line-data" data-line-start="74" data-line-end="75">Criar um diagrama de classes.</p>
<p class="has-line-data" data-line-start="76" data-line-end="77">Este diagrama de classes mostra como as classes se relacionam entre si. A classe Ordem de Serviço tem um relacionamento de muitos para um com as classes Cliente e Técnico, indicando que muitas ordens de serviço podem ser associadas a um único cliente ou técnico. Esses relacionamentos são representados pelas chaves estrangeiras nas tabelas do banco de dados.</p>
