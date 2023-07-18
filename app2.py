import os
import subprocess
import openai
import streamlit as st
import pandas as pd
from langchain.agents import create_sql_agent
from langchain.agents.agent_toolkits import SQLDatabaseToolkit
from langchain.sql_database import SQLDatabase
from langchain.llms.openai import OpenAI
from langchain.agents import AgentExecutor
from langchain.chat_models import ChatOpenAI
from langchain.chains import GraphCypherQAChain
from langchain.graphs import Neo4jGraph

openai.api_key = st.secrets['OPENAI_API_KEY']

db_products_dict = {
    'CloudQ Postgres': ['postgres', 'postgresql+psycopg2'],
    'Neo4j Graph': ['neo4j', 'neo4j+cypher'],
    # todo: add more DBs
    # 'custom mySQL': ['mySQL', '...'],
}

# Define a function to start the 'cloudquery sync' command
def start_cloudquery_sync():
    # Use subprocess.Popen to execute the 'cloudquery sync' command and get a process object
    command = 'cloudquery sync config.yml'
    process = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
    with st.code (process, language="shell-session"):
        # Stream the output of the command to the browser in real-time
        for line in iter(process.stdout.readline, b''):
            st.write(line.decode().strip())

        # Print the output of the command to the terminal console
        for line in iter(process.stderr.readline, b''):
            print(line.decode().strip())

with st.sidebar:
    
    scan_button = st.button('Ingest AWS metadata to a SQL security lake')
    scan_button2 = st.button('Ingest AWS metadata to a security graph')

    st.write('Pick your DB connection:')
    db_type = st.selectbox('DB connection', db_products_dict.keys())

    # if the user has selected a custom database, then show the input fields, else use the public DB
    if db_type == 'CloudQ Postgres':
        db_host = 'localhost'
        db_port = '5432'
        db_user =  'postgres'
        db_password = 'password'
        db_name =  'postgres'

    with st.form(key='my_form_to_submit'):
        user_request = st.text_area("Use GPT to ask questions of your cloud security")
        submit_button = st.form_submit_button(label='Submit')
    
    if db_type == 'Neo4j Graph':
        db_host = 'localhost'
        db_port = '7687'
        db_user =  'neo4j'
        db_password = st.text_input('Neo4j password', 'password', type='password')
        db_name =  'Neo4j'

if scan_button: 
    start_cloudquery_sync()

if submit_button:
    # check if the user has entered a request
    if not user_request:
        st.error('Please enter a request')
        st.stop()

    # check if the user has entered a database credentials
    if not db_host or not db_user or not db_password or not db_name or not db_port:
        st.error('Please enter a database credentials')
        st.stop()
    
    if db_type == 'CloudQ Postgres':
        db = SQLDatabase.from_uri("postgresql://postgres:pass@localhost:5432/postgres?sslmode=disable")
        agent_executor = create_sql_agent(
        llm=OpenAI(temperature=0, model_name='gpt-4'),
        toolkit = SQLDatabaseToolkit(db=db),
        verbose=True
        )
        code = agent_executor.run(user_request)
        
        #pretty_code = '```sql\n' + code + '\n```'
        #code = code.replace('\n', ' ')  

        #with st.expander("See executed code"):
        #    st.write(pretty_code)
        #with st.expander("See introspected BD structure"):
        #   st.write(db)

        #df = pd.read_sql_query(sql=text(code), con=engine.connect())

        st.write("## The results")
        st.write(code)
        st.write("A new way to query the security of your cloud 😱")
    
    if db_type == 'Neo4j Graph': 
        graph = Neo4jGraph(url="bolt://localhost:", username="neo4j", password="password")
        chain = GraphCypherQAChain.from_llm(ChatOpenAI(model_name='gpt-4', temperature=0), graph=graph, verbose=True)
        code = chain.run (user_request)
        st.write("## The results")
        st.write(code)
        st.write("A new way to query the security of your cloud 😱")