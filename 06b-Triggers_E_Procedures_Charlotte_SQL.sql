USE projfinal;

CREATE TABLE IF NOT EXISTS charlotte_auditoria (
	id_auditoria INT PRIMARY KEY AUTO_INCREMENT,
    auditoria TEXT
);

-- TRIGGER AUDITORIA SEMPRE QUE HOUVER INSERT
CREATE TRIGGER tr_auditoria_charlotte_insert 
BEFORE INSERT ON acidentes_charlotte
FOR EACH ROW
INSERT INTO charlotte_auditoria (auditoria) 
VALUES (CONCAT('Foi inserido o ID:', new._id));

-- TRIGGER AUDITORIA SEMPRE QUE HOUVER UPDATE
CREATE TRIGGER tr_auditoria_charlotte_update
BEFORE UPDATE ON acidentes_charlotte
FOR EACH ROW
INSERT INTO charlotte_auditoria (auditoria) 
VALUES (CONCAT('Houve Update no ID:', new._id));

-- TRIGGER AUDITORIA SEMPRE QUE HOUVER DELETE
CREATE TRIGGER tr_auditoria_charlotte_delete
BEFORE DELETE ON acidentes_charlotte
FOR EACH ROW
INSERT INTO charlotte_auditoria (auditoria) 
VALUES (CONCAT('Foi deletado o ID:', old._id));


-- PROCEDURE PARA VERIFICAÇÂO DE INTEGRIDADE DOS DADOS
CREATE PROCEDURE Todos_os_acidentes_charlotte()
SELECT COUNT(*) FROM acidentes_charlotte;

-- INVOCANDO O PROCEDIMENTO TODOS_OS_ACIDENTES:
CALL Todos_os_acidentes_charlotte();

