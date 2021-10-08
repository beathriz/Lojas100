CREATE DATABASE `Lojas100`;

CREATE TABLE `Lojas100`.`fornecedores` (
  `idfornecedores` INT NOT NULL AUTO_INCREMENT,
  `nome_fornecedores` VARCHAR(45) NOT NULL,
  `cnpj` VARCHAR(45) NOT NULL,
  `cep` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idfornecedores`));
  
  CREATE TABLE `Lojas100`.`produtos` (
  `idprodutos` INT NOT NULL AUTO_INCREMENT,
  `cor` VARCHAR(45) NOT NULL,
  `tamanho` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idprodutos`));
  
  CREATE TABLE `Lojas100`.`clientes` (
  `idclientes` INT NOT NULL AUTO_INCREMENT,
  `nome_clientes` VARCHAR(45) NOT NULL,
  `cnpj` VARCHAR(45) NOT NULL,
  `cep` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idclientes`));
  
  
  CREATE TABLE `Lojas100`.`lojas` (
  `idlojas` INT NOT NULL AUTO_INCREMENT,
  `nome_lojas` VARCHAR(45) NOT NULL,
  `cnpj` VARCHAR(45) NOT NULL,
  `cep` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idlojas`));
  
  
  CREATE TABLE `Lojas100`.`vendas` (
  `idvendas` INT NOT NULL AUTO_INCREMENT,
  `data` VARCHAR(45) NOT NULL,
  `valor` VARCHAR(45) NOT NULL,
   PRIMARY KEY (`idvendas`));
   
DESCRIBE `Lojas100`.`vendas`;

DESCRIBE `Lojas100`.`produtos` ;


ALTER TABLE `Lojas100`.`produtos` 
ADD COLUMN `tipoproduto` VARCHAR(45) NOT NULL AFTER `tamanho`;

ALTER TABLE `Lojas100`.`clientes` 
CHANGE COLUMN `cnpj` `CPF` VARCHAR(45) NOT NULL ;

INSERT INTO `Lojas100`.`clientes`
(`nome_clientes`,`cpf`,`cep`,`telefone`,`email`)
VALUES
('JOANA PRADO', '27689009339', '74950400', '21976453838', 'email: Joanaprado@email.com');


INSERT INTO `Lojas100`.`clientes` (`nome_clientes`,`cpf`,`cep`,`telefone`,`email`)
VALUES
('FERNANDA SOUSA', '88999055346', '21890004', '21991773626', 'fernandasousa@email.com'),
('JULIANA SILVEIRA', '11222998374', '23340500', '21938477585', 'julianasilveira@mail.com'),
('ROBERTO MAGALHÃES', '77665445690', '243444566', '21997654334', 'robertomagalhaes@email.com'),
('CARLOS EDUARDO', '88362573894', '21893444', '21987635474', 'carloseduardo@email.com'),
('SUZADA PEDRINI', '66335268490', '24689033', '21987533748', 'suzanapedrini@email.com'),
('TATIANA SILVA', '33467558978', '23456455', '21976439283', 'tatianasilva@email.com'),
('RODRIGO CARDOSO', '87336475859', '23463788', '21974839202', 'rodrigocardoso@email.com'),
('LUCIA MERINDA', '88905766644', '21485900', '211987644950', 'luciamerinda@email.com'), 
('LUCIO SANTOS', '99837448596', '23647588', '21963733849', 'luciosantos@email.com');

INSERT INTO `Lojas100`.`fornecedores` (`nome_fornecedores`, `cnpj`, `cep`, `telefone`, `email`)
VALUES
('TGB ARTIGOS PARA CASA', '73849586000122', '23940544', '21976455757', 'tegb@email.com'),
('TIGGI MOVEIS', '98765434000433', '87654566', '21976543456', 'tiggi@email.com'),
('GAGO PNEUS', '98765434567899', '24364788', '21993748585', 'gago@email.com');

INSERT INTO `Lojas100`.`lojas`(`nome_lojas`, `cnpj`, `cep`,`telefone`, `email`)
VALUES
( 'LOJA1', '25008300000101', '24372666', '2130034001', 'loja1@email.com'),
( 'LOJA2', '25008300000102', '21763499', '2130034002', 'loja2@email.com'),
( 'LOJA3', '25008300000103', '30374499', '2130034003', 'loja3@email.com');

INSERT INTO `Lojas100`.`produtos` (`cor`, `tamanho`, `tipoproduto`)
VALUES
('vermelho', 'P', 'CADEIRA'),
('roxo', 'M', 'SOFA'),
('branco', 'G', 'MESA'),
('marrom', 'P', 'ARMARIO'),
('prata', 'P', 'COMPUTADOR'),
('preta', 'P', 'CANETA'),
('cinza', 'M', 'MOCHILA'),
('preto', 'P', 'PNEU'),
('preto', 'M', 'PNEU'),
('preto', 'G', 'PNEU'),
('branca', 'king', 'CAMA'),
('branca', 'queen', 'CAMA'),
('branca', 'casal', 'CAMA'),
('bege', 'G', 'BANHEIRA');


