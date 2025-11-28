Consultas SQL (SELECT)

O arquivo `03_selects.sql` contém:

- JOIN entre Pet, Consulta e Veterinário
- Listagem de serviços por consulta
- Medicamentos aplicados
- Filtros por pet
- Clientes e seus animais

Exemplo:

```sql
SELECT c.id_consulta, c.data_consulta, p.nome AS pet, v.nome AS veterinario
FROM Consulta c
JOIN Pet p ON c.id_pet = p.id_pet
JOIN Veterinario v ON c.id_veterinario = v.id_veterinario;

---Selects---
---Exibir todas as consultas com nome do pet e do veterinário---
SELECT c.id_consulta, c.data_consulta, p.nome AS pet, v.nome AS veterinario
FROM Consulta c
JOIN Pet p ON c.id_pet = p.id_pet
JOIN Veterinario v ON c.id_veterinario = v.id_veterinario;

---Listar medicamentos aplicados---
SELECT ma.id_consulta, m.nome AS medicamento, ma.quantidade
FROM Medicamento_Aplicado ma
JOIN Medicamento m ON ma.id_medicamento = m.id_medicamento;

---Mostrar serviços realizados---
SELECT sc.id_consulta, s.nome AS servico, s.valor
FROM Servico_Consulta sc
JOIN ServicoPrestado s ON sc.id_servico = s.id_servico;

---Consultas do pet---
SELECT *
FROM Consulta
WHERE id_pet = 1;

---Clientes e pets---
SELECT c.nome AS cliente, p.nome AS pet
FROM Cliente c
LEFT JOIN Pet p ON c.id_cliente = p.id_cliente;
