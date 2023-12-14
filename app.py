import langchain_helper as lch
import streamlit as st

st.title("Pets name generator")

animal_type = st.sidebar.selectbox("What is your pet?", ("Cat", "Dog", "Cow", "Hamnster"))

pet_color = st.sidebar.text_area(f"What color is your {animal_type}?", max_chars=15)

if pet_color:
    response = lch.generate_pet_names(animal_type, pet_color)
    review = lch.langchain_agent(animal_type)
    st.text(response['pet_names'])
    st.subheader(f"Wikipedia ({animal_type})")
    st.write(review)