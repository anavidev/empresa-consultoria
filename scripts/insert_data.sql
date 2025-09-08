USE empresa_consultoria

INSERT INTO Empresa VALUES
('Cliente A', 'Rua AA, 100'),
('Cliente B', 'Avenida BB, 200'),
('Cliente C', 'Praça CC, 300')

INSERT INTO Consultor VALUES
('Ana Silva', '12345678901', 'Financas'),
('Bruno Costa', '23456789012', 'Infraestrutura'),
('Carla Dias', '34567890123', 'Seguranca')

INSERT INTO Projeto VALUES
(1, 'P-100100100A', '2023-06-01', '2025-12-31', 150000.00),
(2, 'P-200200200B', '2024-07-10', NULL, 34000.00),
(3, 'P-300300300C', '2024-05-15', '2024-08-17', 12000.00)

INSERT INTO Projeto_Consultor VALUES
(1, 1, 850.50, 'L'),
(3, 2, 610.00, 'M'),
(2, 3, 180.00, 'L')