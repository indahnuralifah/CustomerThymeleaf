INSERT INTO `customers` (`id`, `nama`, `date`,`gender`,`phone`) VALUES 
('1','Indah','21 Okrober 1999','Perempuan','085691044904'),
('2','Fah','21 Okrober 1999','Perempuan','085691044904');

INSERT INTO `c_security_role` (`id`, `name`, `description`) VALUES 
('admin','admin','Application Admin'),
('user','user','Application User');

INSERT INTO `c_security_permission` (`id`, `permission_label`, `permission_value`) VALUES
('customer_update', 'Edit Peserta', 'ROLE_STORESHOES_UPDATE'),
('customer_view', 'View Peserta', 'ROLE_STORESHOES_VIEW'),
('customer_create', 'Create Peserta', 'ROLE_STORESHOES_CREATE'),
('customer_delete', 'Delete Peserta', 'ROLE_STORESHOES_DELETE'),
('User_View', 'View User', 'ROLE_USER_VIEW');

INSERT INTO `c_security_role_permission` (`id_role`, `id_permission`) VALUES
('admin', 'customer_update'),
('admin', 'customer_view'),
('admin', 'customer_create'),
('admin', 'customer_delete'),
('user', 'customer_view'),
('user', 'user_view'),
('admin', 'user_view');

INSERT INTO `c_security_user` (`id`, `username`, `password`, `active`, `id_role`) VALUES 
('sukses123', 'admin', 'indahnralfh', true, 'admin'),
('bisabisa123', 'user', 'indah', true, 'user');