# Pets Name Generator

AI Generates cool pet names for you!

1. Select the pet type.
2. Write the color of your pet.
3. Press enter.

You'll receive unique names and a brief description of your pet based on Wikipedia.

## Installation
First of all clone the repository 

```bash
git clone https://github.com/ivaniuss/pets-name-langchain.git
cd pets-name-langchain
```

### Basic installation

```bash
pip install -r requirements
```

### Using Virtual Enviroment

```bash
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```
### Using Docker

```bash
docker build -t pets-name-langchain .
docker-compose up -d
```

## Running the Application

Remember to store your `.env` variable `OPENAI_API_KEY` before. You can get your apikey [here](https://platform.openai.com/api-keys).

### Using Basic or Virtual Environment

```bash
streamlit run app.py
```

### Using Docker

Visit http://localhost:4000 in your browser.

## Technologies Used

- [LangChain](https://python.langchain.com/docs/get_started/introduction.html)
- [Streamlit](https://streamlit.io/)
- [OpenAI](https://platform.openai.com)

