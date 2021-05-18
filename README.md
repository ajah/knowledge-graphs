# Common Approach Knowledge Graph

This repo contains a sample graph for the Common Approach Knowledge Graph project.

## Setup

### Start a Neo4j Database

You will need to download Neo4j Desktop for the following steps.

[Download Neo4j Desktop](https://neo4j.com/download/?ref=try-neo4j-lp)

Once successfully downloaded:

- Create & name a new project
- Within the new project, create & name a new DBMS
- Start the DBMS (Database management system) by clicking the green "Connect" button
- Open the DBMS in Neo4j Browser by clicking the blue "Open" button (opens in Neo4j Browser by default, but options are in the dropdown menu)

_Optionally: Scroll through the "Getting Started" feature to get familiar with interface & features_

### Open the database in Neo4j Browser

- Create a new database by running the following command with your choice of database name

  ` CREATE DATABASE <db name>`

- Switch to the newly-created db by running `:use <db name>`
- Copy the Cypher query from `commonapproach.cypher`
- Paste query in frame & run. You should see nodes & relationships populating in the left sidebar
- Run the following command to see the graph

  `MATCH (n) RETURN n`

- If the nodes are grey or the styling looks off, run the following command to reset it

  `:style reset`

### Open graph in Neo4j Bloom

Once the database is populated, return to the Neo4j Desktop screen

- From the drop-down menu on the blue "Open" button, select Neo4j Bloom
- In the window that opens:
  - Make sure the newly created database is selected in the drop-down menu at the top
  - Click "Create Perspective" then "Generate Perspective"
  - Hover over the new Perspective and click "Use perspective"

Explore the blank canvas by clicking the search-like bar at the top and selecting nodes, then hitting Enter to render them.
Using ⌘/Ctrl E will "expand" nodes to show their neighbours, and ⌘/Ctrl H will hide selected nodes.

## Usage

From this point, the graph can be traversed manually as required, but it's also possible to run saved searched with more advanced queries in Cypher.

### Preparing & running saved searches

Preparing in Neo4j Browser

- [Check out this resource to get familiar with Cypher, if required](https://neo4j.com/graphacademy/training-querying-40/enrollment/)
- Test out useful queries in the Browser
- Copy successful queries to go in Bloom

Running in Neo4j Bloom

- In Neo4j Bloom, click the uppermost symbol in the top-left corner to open the left sidebar
- Navigate to the Search Phrases tab
- Click "Add Search Phrase"
- Name, describe, and paste in the Cypher query to create the search phrase, then click Save
- Click the icon again to close the menu, and navigate back to the search bar in the interface
- Begin typing the name of the search phrase to bring it up, then click it and hit Enter to run

## Extending

### Adding nodes via an Arrows sketch

_Note: This method may be the simplest way to extend the graph before the user is comfortable with Cypher, but it's better to add nodes directly in Neo4j Browser using Cypher queries, as per below._

Arrows is an application used to sketch out a graph database. It exports Cypher queries & pictures that make starting or extending a graph database easier.

[Click here for the base sketch of the graph](https://drive.google.com/file/d/1Q0YFKdYmayCEUuYSDhQKma01nntQstkQ/view?usp=sharing)

[See this resource for help on getting started](https://neo4j.com/labs/arrows/)

- Add new nodes and relationships by clicking & dragging new nodes and arrows
- Be sure to match the properties already assigned to other nodes
- Once finished, click the Export button and choose a Cypher query with the MERGE radio button selected
  - This will merge the newly created nodes into the existing graph
  - These merge queries don't always work perfectly, so in case of error try:
    - Copying the same Cypher query but with the CREATE radio button selected
    - `MATCH (n) DETACH DELETE n`
    - Running the CREATE statement exported from Arrows
    - This should fully reset the database and create a fresh graph

### Adding nodes in Neo4j

Nodes can also be added without overhauling the database. This requires some knowledge of the Cypher query language, please see the resources below:

- [Adding Nodes and Relationships with Cypher](https://neo4j.com/graphacademy/training-updating-40/enrollment/)
- [Creating Nodes and Relationships in Neo4j](https://www.youtube.com/watch?v=3VHgmB0SPxQ)

### Importing and exporting using the APOC plugin.

- Add the APOC plugin in the Neo4j Desktop window by selecting the DBMS and navigating to the Plugins tab on the menu that appears to the right
- Click on APOC and select "Install and Restart"
- In the drop down opened by the three dots on the DBMS, select "Settings"
  - Add these lines to the very end of the script (make sure they're uncommented)
    - `apoc.export.file.enabled=true`
    - `apoc.import.file.enabled=true`
  - Ensure this line is uncommented, or add it if it doesn't appear:
    - `dbms.directories.import=import`
  - Apply changes and restart the DB
- Open the graph in Neo4j Browser

#### Exporting the database in Cypher

- Run the following command to export the database:

  `CALL apoc.export.cypher.all("<query name>",{})`

#### Accessing the exported file

The file will appear in the default "import" folder (even though it's an export), which can be found by using the built-in terminal.

- Click on the three dots in the DBMS card & select Terminal
  - (This opens a Bash terminal starting in the DB's repostory)
- In the terminal window that appears, run `cd import && ls`

To acces the file, either:

- Open the new query using the `open` or `cat` commands
- Enter `pwd` to get the file path and manually open the file from the desktop

The working directory should look something like this:
`/Library/Application Support/Neo4j Desktop/Application/relate-data/dbmss/dbms-a2c19df4-18d3-477f-bb38-965add2f7bc1/import`

The below resource helps lay out the import-export process with APOC, but be sure to run `CALL apoc.export.cypher.all` instead of `CALL apoc.export.graphml.all` :

[Importing and Exporting in Neo4j](https://medium.com/@niazangels/export-and-import-your-neo4j-graph-easily-with-apoc-4ea614f7cbdf)

### Future: Managed Cloud-based Options

It may be advantageous to host the database on a managed cloud service like Neo4j Aura or via GCP or AWS, for easier maitenance and sharing. Check out the links below for more information.

[Neo4j Aura](https://neo4j.com/cloud/aura/)

[Neo4j for AWS](https://neo4j.com/partners/aws/)

[Neo4j for GCP](https://neo4j.com/partners/google-cloud-platform/)

[Other Neo4j partners](https://neo4j.com/partners/directory/)
