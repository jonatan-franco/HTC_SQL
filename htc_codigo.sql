CREATE TABLE Pacientes (ID_Paciente INT PRIMARY KEY, 
Gênero VARCHAR(10), 
Idade INT, 
Valores_da_Sessão DECIMAL(10,2), 
Data_do_Pagamento DATE, 
Data_de_Desistência DATE, 
Data_de_Entrada_na_Terapia DATE, 
Tipo_de_Acompanhamento VARCHAR(20));


INSERT INTO Pacientes 
(Gênero, Idade, Valores_da_Sessão, Data_do_Pagamento, Data_de_Desistência, Data_de_Entrada_na_Terapia, Tipo_de_Acompanhamento) 
VALUES
('F', 28, 150.00, '2024-06-05', NULL, '2024-01-15', 'Individual'),
('F', 34, 170.00, '2024-06-10', NULL, '2023-11-20', 'Casal'),
('F', 25, 90.00, '2024-06-01', '2024-06-15', '2024-03-10', 'Individual'),
('F', 42, 55.00, '2024-05-20', '2024-05-25', '2023-08-05', 'Individual'),
('F', 31, 125.00, '2024-06-02', NULL, '2024-02-28', 'Individual'),
('M', 29, 70.00, '2024-06-05', NULL, '2024-04-12', 'Individual'),
('M', 45, 160.00, '2024-06-08', NULL, '2023-09-01', 'Familiar'),
('M', 38, 80.00, '2024-06-04', NULL, '2023-12-10', 'Casal'),
('M', 50, 135.00, '2024-05-30', '2024-06-02', '2024-01-10', 'Individual'),
('M', 22, 50.00, '2024-06-10', NULL, '2024-05-02', 'Individual');