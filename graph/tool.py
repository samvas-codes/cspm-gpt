# Import things that are needed generically
from langchain.agents import AgentType, initialize_agent
from langchain.chat_models import ChatOpenAI
from langchain.tools import BaseTool, StructuredTool, Tool, tool
from langchain.graphs import Neo4jGraph
from langchain.chains import GraphCypherQAChain
from pydantic import BaseModel, Field


OPENAI_API_KEY= "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"

llm = ChatOpenAI(temperature=0, openai_api_key= "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")

graph = Neo4jGraph(url="bolt://localhost:", username="neo4j", password="password")


graph_chain = GraphCypherQAChain.from_llm(ChatOpenAI(model_name='gpt-4', temperature=0), graph=graph, openai_api_key= "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", verbose=True, return_intermediate_steps=True)

tools = [
    Tool.from_function(
        func=graph.query,
        name="Graph",
        description="useful for when you need to query a graph database about AWS"
        # coroutine= ... <- you can specify an async method if desired as well
    ),
]

# Construct the agent. We will use the default agent type here.
# See documentation for a full list of options.
agent = initialize_agent(
    tools, llm, agent=AgentType.ZERO_SHOT_REACT_DESCRIPTION, verbose=True
)

agent.run ("How many s3 buckets are in my aws account, list the names of the buckets")