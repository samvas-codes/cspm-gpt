
# Cloud Security Posture Management(CSPM) powered by GPT-4  

Cloud Security Posture Management (CSPM) tools have evolved over the past years. What began as only as audit of configurations of cloud resources has grown to a complex capability that requires complex querying across relationships, security related data and events. 
Users using these tools need to customize them to their environment to make it easier to address security issues. This requires building their own custom logic or queries using query languages that can be difficult to learn and adapt to. 

The following is a simple example of how LLMs and langchain agents can simplify asking questions to understand the security posture of a cloud environment.  The project now supports the use of multiple DB types including PostgreSQL and Neo4j. It is made extensible by also using different data ingest platforms including Cartography and Cloudquery. Initial attempts to validate shortest paths have been successful if prompted appropriately. This is intended to be a PoC for generating ad-hoc attack paths if assets are labeled appropriately. 

Disclaimer : The app is a demo and several improvements can be made. The queries made and results displayed are currentl best effort. 


NOTE: The dockerfile hasnt been updated to include GraphDBs.   

## Installation

There are two options to use this project. 
    
    1. Run it as is as a streamlit app
    2. Run it as a containarized streamlit app

### Prequisites
    1. Install cloudquery or Cartography on your machine.
    2. This example uses either a Postgres or Neo4j DB as its backend


## Run Locally

Clone the project

```bash
  git clone cspm-pt
```

Go to the project directory

```bash
  cd cspm-gpt
```

Install dependencies

```bash
  pip install requirements.txt
```

Start the app

```bash
  streamlit run app.py
```


## Demo

Insert gif or link to demo


## Environment Variables

To run this project in a container, you will need to add the following environment variables to your .env file

    AWS_ACCESS_KEY_ID= <AWS-ACCESS-KEY>

    AWS_SECRET_ACCESS_KEY= <AWS-SECRET>

    AWS_DEFAULT_REGION= <AWS-DEFAULT-REGION>

    PGDATA= <POSTGRES DATA PATH>

    POSTGRES_USER=""

    POSTGRES_PASSWORD=""

    POSTGRES_DB=""

A sample .env file is provided which contains the default postgres configuration used. 

In addition the streamlit app needs access to the OPENAI API KEY. To add this

    1. Create a .streamlit/secrets.toml file in the project directory
    2. Add the following OPENAI_API_KEY=<API-KEY>

## Usage/Examples
Once the app is running and you have ingested data from your AWS accounts (eg) using Cloudquery, use the following prompts. 

    1. How many running ec2 instances are present? List the instance ids.
    2. How many ebs volumes are attached to ec2 instances? 
    3. How many ec2 instances are public ? What are their public IPs ? List the instance ids and the public IPs as a table.  
    4. List all CIS checks that have failed. Get the resources that have failed these checks. List the checks failed and resources as a table.
    5. How many ec2 instances also have an IAM role attached to it. List the instance IDs, IAM roles and the IAM policy attached to the role
    6. (GRAPH USE CASE) Find the shortest path between an EC2 instance and an S3 bucket, describe how they are connected


## Use cases
    1. The app can be a natural language query builder for CSPM tools 
    2. The app can help SOC teams query their data on demand and visualize them 
    3. It can also help security engineers quickly develop complex queries using natural language 
    4. CISOs that want to understand the state of their environment can easily ask questions 
## Roadmap

    1. Updates to include knowledge graphs as a datasource (Neo4J, AWS Neptune) -- DONE 
    2. Adding vector stores to cache similar queries 
    3. Display generated queries to allow manual intervention


