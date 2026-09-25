SELECT 
C.date,
C.offer,
C.answered,
C.agent_id,
C.total_talk,
C.total_acw,
C.total_hold,
C.asa,
C.abandon,
C.sla_met,
C.sla_over,
S.connection,
A.agent_name,
A.team,
A.effective_start_date,
A.effective_end_date
FROM call_stats  C
INNER JOIN connection_stats S ON S.agent_id = C.agent_id  AND C.date = S.date
INNER JOIN agent_info A ON A.agent_id = C.agent_id AND C.date >= effective_start_date AND C.date <= A.effective_end_date









