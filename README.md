⚡ **Energy Plus Contact Centre KPI & Performance Project**

Project Overview

This project simulates a real-world contact centre for Energy Plus, a fictional electricity provider.

The business relied on manual spreadsheets and inconsistent reporting, making it difficult for leadership to monitor operational performance, sales activity, service levels, and agent productivity.

To address this challenge, I designed and developed an interactive Power BI dashboard using SQL Server as the data source.

The solution provides a centralised view of contact centre performance, allowing managers to monitor KPIs, track sales and service metrics, identify performance trends, and make data-driven decisions.

<img width="1730" height="909" alt="Contact Centre KPI   Performance Project" src="https://github.com/user-attachments/assets/016af383-063c-42f7-ba6e-2c3c979f0587" />

---------------------------------------------------------------------------------------------


⚡ **Business Problem**

Energy Plus lacked a centralised reporting solution to monitor contact centre performance.

This made it difficult to:

- Monitor service level performance
  
- Track sales and conversion rates
  
- Identify high and low-performing agents
  
- Compare performance across teams
  
- Monitor performance trends over time
  
- Support operational decision-making

---------------------------------------------------------------------------------------------

⚡ **Business Requirements & KPI Targets**

The dashboard was designed around key business performance targets:

- Monthly Connections Target: 1,800

- Service Level Target: 75%

- Agent Connections Target: 100 per month

- Agent Conversion Rate Target: Above 10%

These targets allow managers to quickly identify whether the contact centre, teams, and individual agents are meeting expected performance levels.

---------------------------------------------------------------------------------------------

⚡ **Solution**

Using SQL and Power BI, I developed an end-to-end reporting solution that:

- Integrates call, sales, and agent data
  
- Transforms raw data into a reporting-ready dataset

- Accurately tracks agents who move between teams using effective date logic

- Calculates key contact centre KPIs

- Provides interactive dashboards for executives, managers, and team leaders

- Supports regular data refreshes from SQL Server

---------------------------------------------------------------------------------------------

⚡ **Tech Stack**

- SQL
  
- Microsoft SQL Server Management Studio (SSMS)
  
- Power BI
  
- DAX
  
- Power Query

---------------------------------------------------------------------------------------------

⚡ **Database & Data Model**

The project uses three main tables:
- call_stats

Contains call handling metrics such as calls offered, calls answered, abandoned calls, and service level performance.


- connection_stats

Contains sales and connection data used to measure sales performance and conversion rates.

- agent_info

Contains agent information, team assignments, and effective dates used to track movement between teams.



The tables are combined using SQL to create a single reporting dataset that can be used by Power BI.

<img width="1536" height="1024" alt="ChatGPT Image Jul 30, 2026, 09_10_39 PM" src="https://github.com/user-attachments/assets/3842fb32-f493-4f00-a5ea-b26fcdb71ad3" />


---------------------------------------------------------------------------------------------

⚡ **Key Challenge & Solution**

One of the key challenges was ensuring agent performance remained attributed to the correct team when agents moved between teams.

To solve this, I used effective_start_date and effective_end_date within the SQL join logic.

This ensures historical performance remains assigned to the team the agent belonged to at the time, providing more accurate team and agent reporting.

```sql script
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
FROM call_stats C
INNER JOIN connection_stats S ON S.agent_id = C.agent_id  AND C.date = S.date
INNER JOIN agent_info A ON A.agent_id = C.agent_id AND C.date >= A.effective_start_date AND C.date <= A.effective_end_date; 
```

---------------------------------------------------------------------------------------------

⚡ **Power BI Dashboard**

The Power BI solution contains six report pages:

- Executive Summary

This page serves as a reference point for stakeholders, providing essential context and definitions for the dashboard. It includes key metadata such as the report creation date, last review date, business owner, and report owner. A brief summary explains the purpose and scope of the report, helping users quickly understand what it covers.

Key Performance Indicators (KPIs) are also listed on this page, drawn directly from the project requirements, to give managers a clear understanding of the metrics being tracked. Additionally, a glossary has been included to define key terms and metrics, supporting consistent interpretation across all users.
<img width="1303" height="726" alt="Summary" src="https://github.com/user-attachments/assets/8220e209-44a1-4de1-b399-8a77e366b9aa" />

- Contact Centre Operations

This page provides senior managers and executives with a high-level view of contact centre performance throughout the year, making it easy to assess whether key monthly targets are being achieved.

The primary focus is the Connection KPI (target: 1,800 connections per month) and Service Level (target: 75%). Colour-coded KPIs provide instant insight, with green indicating targets have been met and red highlighting areas requiring attention.

**Executive Summary:** A single, high-level view of contact centre performance.

**Instant KPI Monitoring:** Colour-coded indicators quickly show whether monthly targets have been met.

**Better Decision Making:** Clear performance insights support operational and strategic decisions.

**Trend Analysis:** Track performance over time to identify trends, seasonal patterns, and potential issues early.

<img width="1418" height="800" alt="Contact Centre Operations" src="https://github.com/user-attachments/assets/2ece02bb-e77a-4c9d-bc5d-e882ef04cc1e" />


- Agent Operations
  
This page is designed for team managers, providing detailed visibility into individual agent performance throughout the year. It tracks key metrics, including whether agents are achieving their monthly target of 100 connections and maintaining a conversion rate above 10%.

The dashboard helps managers recognise top performers, identify agents who need support, and deliver targeted coaching using detailed performance metrics.

**Performance Tracking:** Quickly identify which agents are meeting or missing their KPIs.

**Targeted Coaching:** Pinpoint areas where individual agents need improvement.

**Recognition:** Easily identify high-performing agents for reward and recognition.

<img width="1417" height="797" alt="Agent Operations" src="https://github.com/user-attachments/assets/0507c550-8803-450b-90b1-035a95ac73ba" />


- Team Operations

This page gives team leaders a complete view of team performance, allowing them to quickly identify top performers, monitor overall progress, and assess whether team targets are being met—all from a single dashboard.

**Team Overview:** View the entire team's performance in one place.

**Target Tracking:** Monitor progress against team KPIs.

**Performance Comparison:** Compare agents to identify gaps and coaching opportunities.

**Faster Decision Making:** Save time with a single, consolidated view of team performance.

<img width="1417" height="794" alt="Team Operations" src="https://github.com/user-attachments/assets/904a10ae-610d-4304-9fc8-8854a25ccd12" />

- Cross-Team Performance

This page provides senior managers with a comparison of team performance across the contact centre. It highlights key metrics such as connections, conversion rates, and service levels, making it easy to identify top-performing teams and ensure all teams are meeting performance expectations.

**Team Comparison:** View all teams side by side in one dashboard.

**Centre-Wide Visibility:** Monitor overall contact centre performance at a glance.

**Performance Monitoring:** Ensure all teams are meeting key KPIs.

**Better Decision Making:** Use insights to guide coaching, resource allocation, and process improvements.

<img width="1411" height="783" alt="Cross-Team Performance" src="https://github.com/user-attachments/assets/daecb984-e8fd-49a3-85cf-5475db19a28f" />


Each page is designed for a different level of analysis, allowing users to move from high-level business performance down to individual agent results.

---------------------------------------------------------------------------------------------

⚡ **Key Features**

The dashboard includes:

- KPI scorecards
- Service Level tracking
- Abandonment Rate monitoring
- Sales and Conversion reporting
- Agent performance analysis
- Team performance comparisons
- Interactive slicers and filters
- Target-based KPI indicators

---------------------------------------------------------------------------------------------


⚡ **How the Dashboard Supports Decisions**

The dashboard helps managers quickly understand what is happening across the contact centre.

Managers can now:
- Identify teams falling below service level targets
- Find agents with low conversion rates
- Recognise high-performing agents and teams
- Monitor sales and operational trends
- Identify areas that may require coaching
- Compare performance across teams
- Track progress against business targets

---------------------------------------------------------------------------------------------


⚡ **Business Impact & Benefits**

The solution replaces manual spreadsheet reporting with a centralised and interactive Power BI dashboard.

This solution allows the business to:

- Monitor important KPIs in one place
- Compare team and agent performance
- Track service levels and sales performance
- Identify performance trends over time
- Identify areas requiring additional support or coaching
- Support operational planning
- Reduce reliance on manual reporting
- Make faster, data-driven decisions

<img width="1536" height="1024" alt="Project Outcome" src="https://github.com/user-attachments/assets/16fc1487-2112-4613-adb8-88374ab8acb6" />

---------------------------------------------------------------------------------------------

⚡ **Files Included**

📂 SQL Scripts
- agent_create_table_script.sql
- agent_insert_script.sql
- agent_update_script.sql
- call_stats_create_table_script.sql
- call_stats_insert_script.sql
- connection_create_table_script.sql
- connection_insert_script.sql
- energy_plus_powerbi_script.sql

📂 Power BI
- Energy Plus Contact Centre KPI Dashboard.pbix

📂 Documentation
- README.md


⚡ **Skills Demonstrated**

- SQL
- Data Modelling
- Data Transformation
- ETL
- Power BI
- DAX
- Power Query
- KPI Reporting
- Dashboard Design
- Business Analysis
- Data Visualisation
- Performance Reporting
- Business Requirements
- Problem Solving
  
