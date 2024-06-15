# PROCESSO SELETIVO - TESTE PRATICO

## 1. QUAL O OBJETIVO DO TESTE:
Avaliar o conhecimento técnico e a lógica de desenvolvimento à vaga de desenvolvedor.

## 2. O QUE É PRECISO PARA O TESTE:

##### ✔️ Solution
Disponível em: link de download do projeto


##### ✔️ Visual Studio 2022
Disponível em: https://visualstudio.microsoft.com/pt-br/downloads/

<strong>Obs:</strong> A Microsoft disponibiliza versão “Comunidade” que é gratuita e dá suporte para efetuar esta atividade.


##### Fique atento:
Na instalação do Visual Studio inclua as opcões: “Pacote de direcionamento do .NET Framework 4.8”, “SDK do .NET Framework 4.8” e “SQL Server Express 2019 LocalDB”
![alt text](/imgs/image.png)

![alt text](/imgs/image-1.png)

</br>

## 3.	POR ONDE COMEÇAR:

Após providenciar os requisitos necessários conforme listados no item 2, descompacte o ZIP <strong style="color:blue;">"FI.WebAtividadeEntrevista.zip"</strong>, onde haverá a Solution <strong style="color:blue;">"FI.WebAtividadeEntrevista.sln"</strong> que se refere a um sistema de manutenção dos dados básicos de clientes.

Ao executar o sistema, na aba <strong>"Clientes"</strong>
está a página principal de manutenção de clientes, onde é permitida a inclusão de um novo cliente atravás do botão <strong>"Novo Cliente".</strong>

![alt text](/imgs/image-2.png)

Com base nesse sistema devera ser realizada a implementação proposta abaixo.

</br>

## 4. O QUE DEVE SER FEITO:

#### Parte 1 - Implementação do CPF do cliente:

Na tela de cadastramento/alteração de clientes, incluir um novo campo denominado CPF, que permitirá o cadastramento do CPF do cliente.

##### Pontos relevantes:

✔️	O novo campo deverá seguir o padrão visual dos demais campos da tela

✔️	O cadastramento do CPF será obrigatório

✔️	Deverá possuir a formatação padrão de CPF (999.999.999-99)

✔️	Deverá consistir se o dado informado éum CPF válido (conforme o cálculo padrão de verificação do dígito verificador de CPF)

✔️	Não permitir o cadastramento de um CPF já existente no banco de dados, ou seja, não é permitida a existência de um CPF duplicado

A aplicação possui um banco de dados interno, que se encontra no caminho <strong style="color:blue;">"~\FI.WebAtividadeEntrevista\App_Data"</strong>, onde será necessária a criação do novo campo no banco de dados, para gravação do valor do CPF.

##### Banco de dados:

✔️ Tabela que deverá armazenar o novo campo de CPF: "CLIENTES" 

✔️ O novo campo deverá ser nomeado como "CPF"

</br>

#### Parte 2 - Implementação do botão Beneficiários:

Na tela de cadastramento/alteração de clientes, incluir um novo botão denominado <strong>“Beneficiários”</strong>, que permitirá o cadastramento de beneficiários do cliente, o mesmo deverá abrir um pop-up para inclusão do “CPF” e “Nome do beneficiário”, além disso deverá existir um grid onde serão exibidos os beneficiários que já foram inclusos, no mesmo grid será possível realizar a manutenção dos beneficiários cadastrados, permitindo a alteração e exclusão dos mesmos. 

##### Pontos relevantes:

✔️ O novo botão e novos campos deverão seguir o padrão visual dos demais botões e campos da tela

✔️ O campo CPF deverá possuir a formatação padrão (999.999.999-99)

✔️ Deverá consistir se o dado informado é um CPF válido (conforme o cálculo padrão de verificação do dígito verificador de CPF)

✔️ Não permitir o cadastramento de mais de um beneficiário com o mesmo CPF para o mesmo cliente

✔️ O beneficiário deverá ser gravado na base de dados quando for acionado o botão “Salvar” na tela de “Cadastrar Cliente” 

##### Banco de dados:

✔️ Tabela que deverá armazenar os dados de beneficiários: "BENEFICIARIOS" 

✔️ Os novos campos deverão ser nomeados como: "ID", “CPF”, “NOME” e “IDCLIENTE”

</br>

##### Layout das telas:

Tela de cadastro de cliente desejada após a implementação do campo “CPF” e botão “Beneficiários”: 

![alt text](/imgs/image-3.png)

Pop-up para cadastramento e manutenção dos beneficiários:

![alt text](/imgs/image-4.png)

</br>

### Tecnologias Utilizadas


<img height="50" src="https://visualstudio.microsoft.com/wp-content/uploads/2021/10/Product-Icon.svg">

<img height="50" src="https://user-images.githubusercontent.com/25181517/121405384-444d7300-c95d-11eb-959f-913020d3bf90.png">

<img height="50" src="https://github.com/marwin1991/profile-technology-icons/assets/19180175/3b371807-db7c-45b4-8720-c0cfc901680a">

<img height="50" src="https://user-images.githubusercontent.com/25181517/186884150-05e9ff6d-340e-4802-9533-2c3f02363ee3.png">

<img height="50" src="https://user-images.githubusercontent.com/25181517/192108374-8da61ba1-99ec-41d7-80b8-fb2f7c0a4948.png">


