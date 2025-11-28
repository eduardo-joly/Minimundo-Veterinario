Script de Criação das Tabelas (DDL)

O arquivo `01_create_tables.sql` contém:

✔ Estrutura completa das tabelas  
✔ Definição das chaves primárias  
✔ Definição das chaves estrangeiras  
✔ Relacionamentos N:N implementados com tabelas associativas  
✔ Tipos de dados adequados (VARCHAR, INT, DATE, DECIMAL)


BEGIN TRANSACTION;

--tabela Cliente--
CREATE TABLE Cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    sobrenome TEXT NOT NULL,
    telefone TEXT,
    endereco TEXT
);

--tabela Pet--
CREATE TABLE Pet (
    id_pet INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    especie TEXT NOT NULL,
    raca TEXT,
    data_nasc DATE,
    id_cliente INTEGER NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

--tabela Veterinario--
CREATE TABLE Veterinario (
    id_veterinario INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    especialidade TEXT,
    numero_chapa TEXT
);

--tabela Tratamento--
CREATE TABLE Tratamento (
    id_tratamento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    descricao TEXT
);

--tabela Consulta--
CREATE TABLE Consulta (
    id_consulta INTEGER PRIMARY KEY AUTOINCREMENT,
    data_consulta DATE NOT NULL,
    horario TEXT NOT NULL,
    sintomas TEXT,
    id_pet INTEGER NOT NULL,
    id_veterinario INTEGER NOT NULL,
    FOREIGN KEY (id_pet) REFERENCES Pet(id_pet),
    FOREIGN KEY (id_veterinario) REFERENCES Veterinario(id_veterinario)
);

-- tabela Diagnostico--
CREATE TABLE Diagnostico (
    id_diagnostico INTEGER PRIMARY KEY AUTOINCREMENT,
    resultado TEXT,
    gravidade TEXT,
    id_consulta INTEGER NOT NULL,
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
);

--tabela Medicamento--
CREATE TABLE Medicamento (
    id_medicamento INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    descricao TEXT,
    validade DATE
);

--tabela Medicamento_Aplicado-- 
CREATE TABLE Medicamento_Aplicado (
    id_medicamento INTEGER NOT NULL,
    id_consulta INTEGER NOT NULL,
    data_aplicacao DATE,
    quantidade INTEGER,
    PRIMARY KEY (id_medicamento, id_consulta),
    FOREIGN KEY (id_medicamento) REFERENCES Medicamento(id_medicamento),
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
);

--tabela ServicoPrestado--
CREATE TABLE ServicoPrestado (
    id_servico INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    valor DECIMAL(10,2)
);

-- tabela Servico_Consulta--
CREATE TABLE Servico_Consulta (
    id_servico INTEGER NOT NULL,
    id_consulta INTEGER NOT NULL,
    PRIMARY KEY (id_servico, id_consulta),
    FOREIGN KEY (id_servico) REFERENCES ServicoPrestado(id_servico),
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
);

COMMIT;
