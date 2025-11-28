# Minimundo-Veterinario

Criação minimundo veterinário

Este repositório contém toda a implementação SQL do minimundo da Clínica Veterinária Pet Revolution, incluindo:

Modelo Lógico normalizado (1FN, 2FN, 3FN)

Criação completa das tabelas (DDL)

Inserção de dados consistentes (DML – INSERT)

Consultas SQL com JOIN, ORDER, LIMIT

Operações de UPDATE e DELETE com integridade

Relacionamentos PK e FK conforme o DER

O objetivo é integrar modelagem de dados com prática real de manipulação em SQL.

Estrutura do Banco de Dados (Modelo Lógico)

O sistema é composto pelas seguintes entidades:

O sistema é composto pelas seguintes entidades:

Tabela Descrição

Cliente   Dono dos pets

Pet Animais cadastrados

Veterinario, Profissionais que realizam consultas

Consulta, Agendamentos dos pets com veterinários

Diagnostico, Resultado de cada consulta

Medicamento, Medicamentos disponíveis na clínica

Medicamento_Aplicado, Medicamentos aplicados em consultas

ServicoPrestado, Serviços adicionais

Servico_Consulta, Tabela associativa entre serviço e consulta

Tratamento, Tratamentos gerais registrados

As cardinalidades e chaves estão documentadas no DER Construído.


Como Executar o Projeto

1.Clonar o repositório
git clone https://github.com/usuario/projeto-banco-clinica.git
cd projeto-banco-clinica

2.Executar os scripts no SQLite, MySQL, Workbench ou Beekeeper

Na ordem:

01_create_tables.sql

02_insert_data.sql

03_selects.sql


Conclusão

Este projeto integra:

Modelagem Conceitual

Transformação DER → Modelo Lógico

Normalização até 3FN

Implementação SQL real

Manipulação e consulta de dados

E atende 100% dos critérios da Experiência Prática IV.
