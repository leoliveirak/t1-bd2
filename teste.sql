SELECT func_begin();
INSERT INTO clientes_em_memoria (nome, saldo) VALUES ('Cliente 1', 100.00);
UPDATE clientes_em_memoria SET saldo = saldo + 50 WHERE id = 1;
SELECT func_end();

SELECT func_begin();
INSERT INTO clientes_em_memoria (nome, saldo) VALUES ('Cliente 2', 200.00);
UPDATE clientes_em_memoria SET saldo = saldo + 50 WHERE id = 2;
SELECT func_end();

SELECT func_begin();
INSERT INTO clientes_em_memoria (nome, saldo) VALUES ('Cliente 3', 300.00);
UPDATE clientes_em_memoria SET saldo = saldo + 50 WHERE id = 2;
SELECT func_end();

-- Incompleto (sem END)
SELECT func_begin();
INSERT INTO clientes_em_memoria (nome, saldo) VALUES ('Cliente 4', 400.00);
UPDATE clientes_em_memoria SET saldo = saldo + 50 WHERE id = 3;

-- Incompleto (sem END)
SELECT func_begin();
INSERT INTO clientes_em_memoria (nome, saldo) VALUES ('Cliente 6', 600.00);
