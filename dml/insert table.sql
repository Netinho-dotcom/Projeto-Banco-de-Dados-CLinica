--INSERÇÃO DOS DADOS

INSERT INTO medicos(id_medico,nome,telefone, especialidade, crm) VALUES
(1,'José Ramalho','(86)9143-9882','cardiologista','CRM789012PI'),
(2,'Bezerra da Silva','(86)8443-9732','obstetra','CRM7856383PI'),
(3,'Emiliano de Jesus','(86)7543-3003','ginecologista','CRM748712PI'),
(4,'Maira José ','(86)8243-2719','urologista','CRM784362PI'),
(5,'Ana Vasconcelos','(86)8143-1214','homeopata','CRM7896432PI'),
(6,'Martins da Vila','(86)8143-9733','cardiologista','CRM764012PI'),
(7,'Raul Seixas','(86)9243-8888','dermatologista','CRM7845342PI'),
(8,'Raquel Silveira','(86)7543-7186','homeopata','CRM789346PI'),
(9,'Cesár Augusto','(86)8343-3803','endocrinologista','CRM649012PI'),
(10,'Fabiana Alencar','(86)8443-7385','oftalmologista','CRM349012PI');

INSERT INTO pacientes(id_paciente,nome,idade,telefone) VALUES
(1,'Alberaldo Macedo', 36,'(86)8423-9132'),
(2,'Rivaldo Jesus', 16,'(86)8423-9191'),
(3,'Adriana Lima', 24,'(86)8423-2324'),
(4,'Francisco Nunes', 62,'(86)8423-9912'),
(5,'Armando Pessoa', 37,'(86)8423-9003'),
(6,'José Luís', 15,'(86)8423-1245'),
(7,'Luís José', 17,'(86)8423-1653'),
(8,'Carlos Amoedo', 39,'(86)8423-0475'),
(9,'Jeferson Barros', 92,'(86)8423-7614'),
(10,'Ryana Monteiro', 27,'(86)8423-1625');

INSERT INTO agendamentos(id_agendamentos,fk_medico_id,fk_paciente_id, data_e_hora, status) VALUES
(1,1,9,'2025-05-10 10:00:00','agendado'),
(2,2,3,'2025-05-11 09:30:00','cancelado'),
(3,3,4,'2025-05-09 10:30:00','cancelado'),
(4,4,7,'2025-05-01 11:00:00','realizado'),
(5,5,10,'2025-04-23 08:30:00','realizado'),
(6,6,7,'2025-05-09 10:00:00','agendado'),
(7,6,2,'2025-05-03 09:45:00','realizado'),
(8,9,1,'2025-03-18 15:30:00','realizado'),
(9,10,10,'2025-05-08 18:00:00','agendado'),
(10,10,1,'2025-06-29 21:00:00','cancelado');

INSERT INTO consultas(id_consulta, fk_agendamento_id, diagnostico, data_realizacao) VALUES
(1,1,'consulta não realizada',null),
(2,2,'consulta não realizada',null),
(3,3,'consulta não realizada',null),
(4,4,'Hiperplasia Prostática Benigna (HPB)','2025-05-01'),
(5,5,'Ansiedade leve com distúrbios do sono','2025-04-23'),
(6,6,'consulta não realizada',null),
(7,7,'Hipertensão arterial estágio 1','2025-05-03'),
(8,8,'Pré-diabetes','2025-03-18'),
(9,9,'consulta não realizada',null),
(10,10,'consulta não realizada',null);


INSERT INTO receitas(id_receita, fk_consulta_id, descricao) VALUES
(1,1,'consulta ainda não realizada'),
(2,2,'consulta ainda não realizada'),
(3,3,'consulta ainda não realizada'),
(4,4,'Finasterida 5mg – tomar 1 comprimido ao dia'),
(5,5,'Ignatia 30CH – 5 gotas, 3x ao dia'),
(6,6,'consulta ainda não realizada'),
(7,7,'Losartana potássica 50mg – tomar 1 comprimido de 12 em 12 horas'),
(8,8,'Metformina 500mg – tomar 1 comprimido após o jantar'),
(9,9,'consulta ainda não realizada'),
(10,10,'consulta ainda não realizada');

INSERT INTO pagamentos(id_pagamento, fk_id_consulta,valor, metodo, status )VALUES
(1, 1, 250.00,'dinheiro','pendente'),
(2, 2, 180.00,'cartão de crédito','pendente'),
(3, 3, 190.00,'dinheiro','pendente'),
(4, 4, 310.00,'cartão de crédito','pago'),
(5, 5, 300.00,'dinheiro','pago'),
(6, 6, 170.00,'cartão de crédito','pendente'),
(7, 7, 220.00,'dinheiro','pago'),
(8, 8, 300.00,'dinheiro','pago'),
(9, 9, 250.00,'cartão de crédito','pendente'),
(10, 10, 350.00,'cartão de crédito','pendente');

--atualizando dados
UPDATE consultas
SET diagnostico = 'Diabetes tipo 1 controlada'
WHERE id_consulta = 8;

UPDATE receitas
SET descricao = 'Ignatia 30CH – 4 gotas, 3x ao dia'
WHERE id_receita = 5;

DELETE FROM pacientes
WHERE id_paciente NOT IN (
    SELECT fk_paciente_id FROM agendamentos
);


--CONSULTAS


--consulta simples das tabelas

select*from medicos;

select*from pacientes;

select *from agendamentos;

select*from consultas;

select*from receitas;

select*from pagamentos;


--mostrar os pacintes com menos de 18 anos

SELECT nome,idade FROM  pacientes 
WHERE idade <18 ;

--mostrar as consultas que ainda não foram realizadas mas continuam agendadas 
SELECT*FROM consultas c JOIN agendamentos a
ON c.fk_agendamento_id = a.id_agendamentos
WHERE a.status= 'agendado';

--exibe o nome dos médicos que não são cardiolostas nem oftalmologistas
SELECT nome FROM medicos 
WHERE especialidade <> 'cardiologista' AND especialidade <> 'oftalmologista'; 


SELECT*FROM pacientes 
WHERE nome LIKE 'A%'; 


SELECT*FROM medicos 
WHERE especialidade IN('endocrionologista','homeopata');

--total de agendamentos pro médico
SELECT fk_medico_id, COUNT(*) AS total_agendamentos
FROM agendamentos
GROUP BY fk_medico_id;


-- pacientes em ordem alfabética
SELECT nome FROM pacientes
ORDER BY nome;

--quantidade total de pacientes
SELECT COUNT(*) FROM pacientes;

--valor total recebido das consultas
SELECT SUM(valor) AS total_recebido
FROM pagamentos
WHERE status = 'pago';

-- Valor médio de consultas pagas
SELECT ROUND(AVG(valor), 2) AS media_consulta
FROM pagamentos
WHERE status = 'pago';

-- Maior e menor valor de consulta
SELECT MAX(valor) AS mais_caro, MIN(valor) AS mais_barato
FROM pagamentos;

 


 