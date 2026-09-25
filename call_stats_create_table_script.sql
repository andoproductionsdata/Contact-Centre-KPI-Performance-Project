CREATE TABLE call_stats  (
    date DATE,
    offer INT,
    answered INT,
    agent_id VARCHAR(10),
    total_talk FLOAT,       
	total_acw FLOAT,
	total_hold FLOAT,
    asa FLOAT,       -- Average Speed of Answer in seconds
    abandon INT,     -- Number of abandoned calls
    sla_met INT,     -- Number of calls meeting SLA
    sla_over INT    -- Number of calls missing SLA
);









