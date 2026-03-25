from ollama import embed, chat

embeddings = embed(model="nomic-embed-text",input=["Here is an example sentence","Here's a second one!"])

print(len(embeddings['embeddings'][0]))

response = chat(model='qwen3:0.6b', messages=[
  {
    'role': 'user',
    'content': 'Why did the chicken cross the road?',
  },
])

print(response.message.content)
