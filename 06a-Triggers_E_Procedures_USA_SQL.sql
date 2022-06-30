USE projfinal;

CREATE TABLE IF NOT EXISTS acidentes_auditoria (
	id_auditoria INT PRIMARY KEY AUTO_INCREMENT,
    auditoria TEXT
);

-- TRIGGER AUDITORIA SEMPRE QUE HOUVER INSERT
CREATE TRIGGER tr_auditoria_usa 
BEFORE INSERT ON acidentesusa
FOR EACH ROW
INSERT INTO acidentes_auditoria (auditoria) 
VALUES (CONCAT('Foi inserido o ID:', new.ID));

-- TRIGGER AUDITORIA SEMPRE QUE HOUVER UPDATE
CREATE TRIGGER tr_auditoria_usa_update
BEFORE UPDATE ON acidentesusa
FOR EACH ROW
INSERT INTO acidentes_auditoria (auditoria) 
VALUES (CONCAT('Houve Update no ID:', new.ID));

-- TRIGGER AUDITORIA SEMPRE QUE HOUVER DELETE
CREATE TRIGGER tr_auditoria_usa_delete
BEFORE DELETE ON acidentesusa
FOR EACH ROW
INSERT INTO acidentes_auditoria (auditoria) 
VALUES (CONCAT('Foi deletado o ID:', old.ID));

-- PROCEDURE PARA VISUALIZAR A SEVERIDADE DOS ACIDENTES_USA
CREATE PROCEDURE severidade_acidente_usa (Severity bigint)
SELECT Severity as SEVERIDADE
FROM acidentesusa
WHERE Severity = Severity;

-- INVOCANDO O PROCEDIMENTO SEVERIDADE ACIDENTES:
CALL severidade_acdiente_usa(1);


-- PROCEDURE PARA VERIFICAÇÂO DE INTEGRIDADE DOS DADOS
CREATE PROCEDURE Todos_os_acidentes()
SELECT COUNT(*) FROM acidentesusa;

-- INVOCANDO O PROCEDIMENTO TODOS_OS_ACIDENTES:
CALL Todos_os_acidentes();

