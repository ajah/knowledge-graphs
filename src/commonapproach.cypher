CREATE CONSTRAINT ON (node:`UNIQUE IMPORT LABEL`) ASSERT (node.`UNIQUE IMPORT ID`) IS UNIQUE;
UNWIND [{_id:15, properties:{hasLegalName:"Harvest Impact"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Organization;
UNWIND [{_id:1, properties:{name:"2.1 End hunger and ensure food access", `sch:description`:"By 2030, end hunger and ensure access by all people, in particular the poor and people in vulnerable situations, including infants, to safe, nutritious and sufficient food all year round."}}, {_id:3, properties:{name:"2.2 End all forms of malnutrition"}}, {_id:8, properties:{name:"2.3 Double agricultural productivity & incomes for small-scale food producers"}}, {_id:9, properties:{name:"2.4 Sustainable food production systems"}}, {_id:19, properties:{name:"2.5 Genetic diversity"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Target;
UNWIND [{_id:0, properties:{name:"2.1.2 Prevalance of moderate or severe food insecurity"}}, {_id:5, properties:{name:"2.1.1. Prevalance of undernourishment"}}, {_id:25, properties:{name:"2.2.1 Prevalance of stunting for children under 5"}}, {_id:26, properties:{name:"2.3.1 Volume of production per labour unit"}}, {_id:27, properties:{name:"2.3.2 Average income of small-scale food producers"}}, {_id:30, properties:{name:"2.4.1. Proportion of agricultural area under productive and sustainable agriculture"}}, {_id:34, properties:{name:"2.4.1 Proportion of agricultural area under productive and sustainable agriculture"}}, {_id:35, properties:{name:"2.4.2 Ecosystem services from agriculture and improved soil"}}, {_id:36, properties:{name:"2.5.2 Risk of extinction of local breeds"}}, {_id:37, properties:{name:"2.5.1 Plant and animal genetic resources for food and agriculture in conservation facilities"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:UNIndicator;
UNWIND [{_id:2, properties:{name:"UNSDG2"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:SDG;
UNWIND [{_id:6, properties:{name:"2.3.4 Increased access to stable and fair land tenure"}}, {_id:11, properties:{name:"2.4.3 Food Production Skills"}}, {_id:17, properties:{name:"2.4.4. Natural biodiversity"}}, {_id:20, properties:{name:"2.1.2 Social Connection and Community Engagement"}}, {_id:21, properties:{name:"2.1.6. Policy towards food security"}}, {_id:22, properties:{name:"2.1.5. (Improved) income security and housing"}}, {_id:23, properties:{name:"2.1.4. (Increased) skills around nutition and food preparation"}}, {_id:24, properties:{name:"2.1.3 Direct access to nutritious food"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:HeadlineIndicator;
UNWIND [{_id:4, properties:{name:"Pathway to good phsyical & mental health through sustained access to good food"}}, {_id:7, properties:{name:"Pathway to increased production and prodcuer income using sustainable management"}}, {_id:10, properties:{name:"Pathway to sustainable agro-ecological productions sytems"}}, {_id:18, properties:{name:"Pathway to increased genetic diversity"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Pathway;
UNWIND [{_id:13, properties:{name:"Empower people to entier the vertical hydroponic food growing sector", value:20}}, {_id:28, properties:{name:"Reduce waste water"}}, {_id:33, properties:{name:"Increased awareness of the circular food economy"}}, {_id:38, properties:{name:"Reduce greenhouse gas emissions"}}, {_id:39, properties:{name:"Create new arable land"}}, {_id:42, properties:{name:"Repurpose arable land"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Outcome;
UNWIND [{_id:14, properties:{name:"The FS will engage 5 experts to deliver an event in the restaurant that will educate people on the circular food economy"}}, {_id:16, properties:{org:"Harvest Impact", name:"Installation and Test of Device. X Litres of rainwater produces X amount of dollars saved and X Litres divereted from sewer system"}}, {_id:31, properties:{name:"The weight of the ingredients (tracked in KPI #1) will be entered into Provision Coalition’s Food Loss + Waste Toolkit to calculate the greenhouse gas emissions avoided"}}, {_id:32, properties:{name:"% increase in participants (customers) indicated they have a better understanding of circular economy and capacity implementing sustainable / circular practices. (improved level of service)"}}, {_id:40, properties:{org:"Harvest Impact", name:"Environmental/Social # volume (minimum 750 to 1000 lbs) of nutritious local food produced on .258acres of newly created arable land (food)"}}, {_id:41, properties:{org:"Harvest Impact", name:"25 acres of agricultural by-product repurposed"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:SEIndicator;
UNWIND [{_id:12, properties:{name:"Gardening"}}, {_id:29, properties:{name:"Sustainable ag. practices"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Initiative;
UNWIND [{start: {_id:1}, end: {_id:2}, properties:{}}, {start: {_id:3}, end: {_id:2}, properties:{}}, {start: {_id:8}, end: {_id:2}, properties:{}}, {start: {_id:9}, end: {_id:2}, properties:{}}, {start: {_id:19}, end: {_id:2}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:isTargetOf]->(end) SET r += row.properties;
UNWIND [{start: {_id:13}, end: {_id:12}, properties:{}}, {start: {_id:33}, end: {_id:29}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:increasesSkillsIn]->(end) SET r += row.properties;
UNWIND [{start: {_id:13}, end: {_id:14}, properties:{}}, {start: {_id:33}, end: {_id:32}, properties:{}}, {start: {_id:28}, end: {_id:16}, properties:{}}, {start: {_id:39}, end: {_id:40}, properties:{}}, {start: {_id:42}, end: {_id:41}, properties:{}}, {start: {_id:38}, end: {_id:31}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:hasIndicator]->(end) SET r += row.properties;
UNWIND [{start: {_id:29}, end: {_id:30}, properties:{}}, {start: {_id:29}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:isIncreasedBy]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1}, properties:{}}, {start: {_id:5}, end: {_id:1}, properties:{}}, {start: {_id:25}, end: {_id:3}, properties:{}}, {start: {_id:26}, end: {_id:8}, properties:{}}, {start: {_id:27}, end: {_id:8}, properties:{}}, {start: {_id:30}, end: {_id:8}, properties:{}}, {start: {_id:34}, end: {_id:9}, properties:{}}, {start: {_id:35}, end: {_id:9}, properties:{}}, {start: {_id:36}, end: {_id:19}, properties:{}}, {start: {_id:37}, end: {_id:19}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:isIndicatorOf]->(end) SET r += row.properties;
UNWIND [{start: {_id:12}, end: {_id:11}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:areCultivatedBy]->(end) SET r += row.properties;
UNWIND [{start: {_id:6}, end: {_id:7}, properties:{}}, {start: {_id:11}, end: {_id:10}, properties:{}}, {start: {_id:17}, end: {_id:18}, properties:{}}, {start: {_id:17}, end: {_id:10}, properties:{}}, {start: {_id:20}, end: {_id:4}, properties:{}}, {start: {_id:21}, end: {_id:4}, properties:{}}, {start: {_id:21}, end: {_id:7}, properties:{}}, {start: {_id:22}, end: {_id:4}, properties:{}}, {start: {_id:23}, end: {_id:4}, properties:{}}, {start: {_id:24}, end: {_id:4}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:isIndicatorOf]->(end) SET r += row.properties;
UNWIND [{start: {_id:28}, end: {_id:29}, properties:{}}, {start: {_id:38}, end: {_id:29}, properties:{}}, {start: {_id:39}, end: {_id:29}, properties:{}}, {start: {_id:42}, end: {_id:29}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:activelyContributesTo]->(end) SET r += row.properties;
UNWIND [{start: {_id:4}, end: {_id:3}, properties:{}}, {start: {_id:4}, end: {_id:1}, properties:{}}, {start: {_id:7}, end: {_id:8}, properties:{}}, {start: {_id:10}, end: {_id:9}, properties:{}}, {start: {_id:18}, end: {_id:19}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:indirectlySupports]->(end) SET r += row.properties;
UNWIND [{start: {_id:15}, end: {_id:14}, properties:{}}, {start: {_id:15}, end: {_id:16}, properties:{}}, {start: {_id:15}, end: {_id:31}, properties:{}}, {start: {_id:15}, end: {_id:32}, properties:{}}, {start: {_id:15}, end: {_id:40}, properties:{}}, {start: {_id:15}, end: {_id:41}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:hasIndicator]->(end) SET r += row.properties;
MATCH (n:`UNIQUE IMPORT LABEL`)  WITH n LIMIT 20000 REMOVE n:`UNIQUE IMPORT LABEL` REMOVE n.`UNIQUE IMPORT ID`;
DROP CONSTRAINT ON (node:`UNIQUE IMPORT LABEL`) ASSERT (node.`UNIQUE IMPORT ID`) IS UNIQUE;
