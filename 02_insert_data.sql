Script de Inserção de Dados (DML – INSERT)

O arquivo `02_insert_data.sql` inclui dados reais e compatíveis entre si, para evitar violações de chave estrangeira.

Inclui:  
- 3 clientes  
- 3 pets  
- 2 veterinários  
- 3 consultas  
- 3 diagnósticos  
- 3 medicamentos  
- serviços e medicamentos aplicados


--INSERT--
INSERT INTO Cliente (nome, sobrenome, telefone, endereco) 
VALUES
('Marcos', 'Silva', '11987654321', 'Rua das Flores, 123'),
('Ana', 'Pereira', '11999887766', 'Av. Brasil, 450'),
('Eduardo', 'lider', '11912345678', 'Rua Verde, 987');

select * from cliente; 

INSERT INTO Pet (nome, especie, raca, data_nasc, id_cliente) 
VALUES
('Rex', 'Cachorro', 'Labrador', '2020-05-10', 1),
('Mia', 'Gato', 'Siamês', '2021-09-15', 2),
('Thor', 'Cachorro', 'Husky', '2019-01-20', 3);

select * from Pet;

INSERT INTO Veterinario (nome, especialidade, numero_chapa) 
VALUES
('Dra. Carla Mendes', 'Clínica Geral', 'CH123'),
('Dr. João Almeida', 'Ortopedia', 'CH456');

select *from Veterinario;

INSERT INTO Medicamento (nome, descricao, validade) 
VALUES
('Antibiótico X', 'Para tratamento de infecções', '2026-12-31'),
('Anti-inflamatório Y', 'Reduz dores e inchaços', '2025-08-15'),
('Vermífugo Z', 'Controle de parasitas internos', '2027-03-10');

select *from Medicamento;

INSERT INTO Tratamento (nome, descricao) 
VALUES
('Fisioterapia', 'Sessões de reabilitação'),
('Curativo', 'Limpeza e higienização diária'),
('Hidratação', 'Aplicação de soro');

select *from Tratamento;


INSERT INTO Consulta (data_consulta, horario, sintomas, id_pet, id_veterinario) 
VALUES
('2025-01-10', '10:00:00', 'Febre e falta de apetite', 1, 1),
('2025-01-12', '14:30:00', 'Manqueira na pata direita', 2, 2),
('2025-01-15', '09:45:00', 'Vômito e diarreia', 3, 1);

select *from Consulta;

INSERT INTO Diagnostico (resultado, gravidade, id_consulta) 
VALUES
('Infecção bacteriana', 'Moderada', 1),
('Luxação leve', 'Leve', 2),
('Gastroenterite', 'Moderada', 3);

select *from Diagnostico;

INSERT INTO Medicamento_Aplicado (id_medicamento, id_consulta, data_aplicacao, quantidade) 
VALUES
(1, 1, '2025-01-10', 1),
(2, 2, '2025-01-12', 2),
(3, 3, '2025-01-15', 1);

select *From Medicamento_Aplicado; 

INSERT INTO ServicoPrestado (nome, valor) 
VALUES
('Banho e Tosa', 80.00),
('Vacinação', 120.00),
('Exame Laboratorial', 200.00);

select *from ServicoPrestado;

INSERT INTO Servico_Consulta (id_servico, id_consulta) 
VALUES
(1, 1),
(2, 1),
(3, 2),
(1, 3);

select *from Servico_Consulta;
