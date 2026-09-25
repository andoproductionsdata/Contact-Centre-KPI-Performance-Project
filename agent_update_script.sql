-- ** Please only run scripts below once, you do not want duplicate records added into your reference table**

-- Alice carter moves to team 3 01/04/2025
-- Olivia Fraser moves to team 1 01/05/2025

SELECT * FROM agent_info

UPDATE agent_info SET effective_end_date = '2025-03-31'
WHERE agent_id = 'AG001';

INSERT INTO agent_info (agent_id, agent_name, team, effective_start_date, effective_end_date) VALUES
('AG001', 'Alice Carter', 'Team 3', '2025-04-01', '9999-12-31');

UPDATE agent_info SET effective_end_date = '2025-04-30'
WHERE agent_id = 'AG015' 

INSERT INTO agent_info (agent_id, agent_name, team, effective_start_date, effective_end_date) VALUES
('AG015', 'Olivia Fraser', 'Team 1', '2025-05-01', '9999-12-31');


