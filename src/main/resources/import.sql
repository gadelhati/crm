-- CREATING SCHEMA
CREATE SCHEMA IF NOT EXISTS crm;

-- CREATING SEQUENCE
CREATE SEQUENCE IF NOT EXISTS crm.hibernate_sequence;

-- POPULING crm.privilege
--INSERT INTO crm.privilege(created_at, updated_at, id, name) VALUES(NOW(), NOW(), '82beb7a1-621c-4b9a-83eb-3ca196ed4345', 'READ_PRIVILEGE') ON CONFLICT DO NOTHING;
--INSERT INTO crm.privilege(created_at, updated_at, id, name) VALUES(NOW(), NOW(), '3f2146a9-5d43-448e-a1eb-455766d3a14a', 'WRITE_PRIVILEGE') ON CONFLICT DO NOTHING;

-- POPULING crm.role
INSERT INTO crm.role(created_at, updated_at, id, name) VALUES(NOW(), NOW(), '7c12004d-e843-4e00-be40-01845ad75834', 'ROLE_USER') ON CONFLICT DO NOTHING;
INSERT INTO crm.role(created_at, updated_at, id, name) VALUES(NOW(), NOW(), '52c57a80-4e3b-4a41-a864-58d0cea25b14', 'ROLE_MODERATOR') ON CONFLICT DO NOTHING;
INSERT INTO crm.role(created_at, updated_at, id, name) VALUES(NOW(), NOW(), '8652ec73-0a53-433c-93be-420f1d90c681', 'ROLE_ADMIN') ON CONFLICT DO NOTHING;
INSERT INTO crm.role(created_at, updated_at, id, name) VALUES(NOW(), NOW(), 'f63b534f-154b-498f-b424-8469948d2f78', 'ROLE_RECTIFIER') ON CONFLICT DO NOTHING;
INSERT INTO crm.role(created_at, updated_at, id, name) VALUES(NOW(), NOW(), '8cbfd8a2-db75-4bca-850b-d638a33701aa', 'ROLE_OPERATOR') ON CONFLICT DO NOTHING;

-- POPULING crm.role_privilege
--INSERT INTO crm.role_privilege(created_at, updated_at, role_id, privilege_id) VALUES (NOW(), NOW(), '7c12004d-e843-4e00-be40-01845ad75834', '82beb7a1-621c-4b9a-83eb-3ca196ed4345') ON CONFLICT DO NOTHING;
--INSERT INTO crm.role_privilege(created_at, updated_at, role_id, privilege_id) VALUES (NOW(), NOW(), '52c57a80-4e3b-4a41-a864-58d0cea25b14', '82beb7a1-621c-4b9a-83eb-3ca196ed4345') ON CONFLICT DO NOTHING;
--INSERT INTO crm.role_privilege(created_at, updated_at, role_id, privilege_id) VALUES (NOW(), NOW(), '52c57a80-4e3b-4a41-a864-58d0cea25b14', '3f2146a9-5d43-448e-a1eb-455766d3a14a') ON CONFLICT DO NOTHING;
--INSERT INTO crm.role_privilege(created_at, updated_at, role_id, privilege_id) VALUES (NOW(), NOW(), '8652ec73-0a53-433c-93be-420f1d90c681', '82beb7a1-621c-4b9a-83eb-3ca196ed4345') ON CONFLICT DO NOTHING;
--INSERT INTO crm.role_privilege(created_at, updated_at, role_id, privilege_id) VALUES (NOW(), NOW(), '8652ec73-0a53-433c-93be-420f1d90c681', '3f2146a9-5d43-448e-a1eb-455766d3a14a') ON CONFLICT DO NOTHING;

-- POPULING crm.user
INSERT INTO crm.user_entity(created_at, updated_at, id, username, password, email, active) VALUES (NOW(), NOW(), 'b4c48fe3-4cf2-411d-9d4b-82f7c63eff9c', '00038059', '$2a$10$v5q8rJ5T/OlmZ2NKSYB2YOOxkn9AI1K04Bn9pemlEZTAMybsq6ona', 'marcelo.gadelha@marinha.mil.br', true) ON CONFLICT DO NOTHING;
INSERT INTO crm.user_entity(created_at, updated_at, id, username, password, email, active) VALUES (NOW(), NOW(), '9063f71e-9599-4b43-9754-f4a5ba00ca50', '14148102', '$2a$10$v5q8rJ5T/OlmZ2NKSYB2YOOxkn9AI1K04Bn9pemlEZTAMybsq6ona', 'diego.pinto@marinha.mil.br', true) ON CONFLICT DO NOTHING;
INSERT INTO crm.user_entity(created_at, updated_at, id, username, password, email, active) VALUES (NOW(), NOW(), 'f7c8f99b-90c8-47af-a237-753a58781114', '21185042', '$2a$10$v5q8rJ5T/OlmZ2NKSYB2YOOxkn9AI1K04Bn9pemlEZTAMybsq6ona', 'thamyres.lima@marinha.mil.br', true) ON CONFLICT DO NOTHING;
INSERT INTO crm.user_entity(created_at, updated_at, id, username, password, email, active) VALUES (NOW(), NOW(), 'e8b255ae-90cd-4d55-9561-9f85e7932c3d', '86768646', '$2a$10$v5q8rJ5T/OlmZ2NKSYB2YOOxkn9AI1K04Bn9pemlEZTAMybsq6ona', 'jeferson.lessa@marinha.mil.br', true) ON CONFLICT DO NOTHING;
INSERT INTO crm.user_entity(created_at, updated_at, id, username, password, email, active) VALUES (NOW(), NOW(), 'f2199ebe-0306-4ade-943c-db708c418fae', '14088185', '$2a$10$v5q8rJ5T/OlmZ2NKSYB2YOOxkn9AI1K04Bn9pemlEZTAMybsq6ona', 'thiago.gomes@marinha.mil.br', true) ON CONFLICT DO NOTHING;
INSERT INTO crm.user_entity(created_at, updated_at, id, username, password, email, active) VALUES (NOW(), NOW(), '38108890-55b7-4b8c-80c0-f363b003083b', '18090311', '$2a$10$v5q8rJ5T/OlmZ2NKSYB2YOOxkn9AI1K04Bn9pemlEZTAMybsq6ona', 'barreto.lopes@marinha.mil.br', true) ON CONFLICT DO NOTHING;
INSERT INTO crm.user_entity(created_at, updated_at, id, username, password, email, active) VALUES (NOW(), NOW(), '1818580a-48da-4ce4-8482-213d0563ce6c', '21403724', '$2a$10$v5q8rJ5T/OlmZ2NKSYB2YOOxkn9AI1K04Bn9pemlEZTAMybsq6ona', 'siqueira.felipe@marinha.mil.br', true) ON CONFLICT DO NOTHING;
INSERT INTO crm.user_entity(created_at, updated_at, id, username, password, email, active) VALUES (NOW(), NOW(), '21161d05-df8e-44fb-80b8-08ecc18cb110', '14147203', '$2a$10$v5q8rJ5T/OlmZ2NKSYB2YOOxkn9AI1K04Bn9pemlEZTAMybsq6ona', 'matheus.augusto@marinha.mil.br', true) ON CONFLICT DO NOTHING;

-- POPULING crm.user_role
INSERT INTO crm.user_roles(user_id, role_id) VALUES ('b4c48fe3-4cf2-411d-9d4b-82f7c63eff9c', '7c12004d-e843-4e00-be40-01845ad75834') ON CONFLICT DO NOTHING;
INSERT INTO crm.user_roles(user_id, role_id) VALUES ('9063f71e-9599-4b43-9754-f4a5ba00ca50', '7c12004d-e843-4e00-be40-01845ad75834') ON CONFLICT DO NOTHING;
INSERT INTO crm.user_roles(user_id, role_id) VALUES ('f7c8f99b-90c8-47af-a237-753a58781114', '52c57a80-4e3b-4a41-a864-58d0cea25b14') ON CONFLICT DO NOTHING;
INSERT INTO crm.user_roles(user_id, role_id) VALUES ('e8b255ae-90cd-4d55-9561-9f85e7932c3d', '8652ec73-0a53-433c-93be-420f1d90c681') ON CONFLICT DO NOTHING;
INSERT INTO crm.user_roles(user_id, role_id) VALUES ('f2199ebe-0306-4ade-943c-db708c418fae', '8652ec73-0a53-433c-93be-420f1d90c681') ON CONFLICT DO NOTHING;
INSERT INTO crm.user_roles(user_id, role_id) VALUES ('38108890-55b7-4b8c-80c0-f363b003083b', '8652ec73-0a53-433c-93be-420f1d90c681') ON CONFLICT DO NOTHING;
INSERT INTO crm.user_roles(user_id, role_id) VALUES ('1818580a-48da-4ce4-8482-213d0563ce6c', '8652ec73-0a53-433c-93be-420f1d90c681') ON CONFLICT DO NOTHING;
INSERT INTO crm.user_roles(user_id, role_id) VALUES ('21161d05-df8e-44fb-80b8-08ecc18cb110', '8652ec73-0a53-433c-93be-420f1d90c681') ON CONFLICT DO NOTHING;

