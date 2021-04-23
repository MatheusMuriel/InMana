# Inmana

<p align="center">
  <img src="./git-docs/elixir_logo.svg" width="250"/>
</p>

<center>
  <img src="./git-docs/inmana_logo.png" width="200"/>
</center>

<h4 align="center">Next Level Week 5.0 🚀</h4>
<h4 align="center">Project by @Rocketseat</h4>
<h5 align="center">Made with 💜 by Matheus Muriel</h4>

<p align="center">
  <a href="#project">Project</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#techs">Technologies</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#install">Install</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
  <a href="#commands">Commands</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;
  <a href="#author">Author</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>

<h1 align="center">
  <a href="https://www.linkedin.com/in/matheusmuriel/">
    <img alt="Linkedin" src="https://img.shields.io/badge/LinkedIn-1781EB?style=for-the-badge&logo=linkedin&logoColor=fff&labelColor=1781EB)%5D">
  </a>
  <a href="https://matheusmuriel.medium.com/">
    <img alt="Medium" src="https://img.shields.io/badge/Medium-12100E?style=for-the-badge&logo=medium&logoColor=white">
  </a>
</h1>
<br>

<a id="project"></a>

# 📝 Project

<p align="center">
  Inamana is a API to manage restaurant products and your expiration dates.
  <br>
  The API send weekly an email for advising which products are nearby to expiration.
  <br>
  With this informations the restaurant manager can be plan your menu for the best utilization of your products.
</p>
<br>

<a id="techs"></a>

# 👨‍💻 Technologies

This project use:

- [Elixir](https://elixir-lang.org/)
- [Phoenix Framework](https://www.phoenixframework.org/)
- [Credo](https://github.com/rrrene/credo)
- [Bamboo](https://github.com/thoughtbot/bamboo)
- [Octo](https://github.com/elixir-ecto/ecto)
- [PostgreSQL](https://www.postgresql.org/)
<br>
<br>


<a id="install"></a>

# ⚙️ Install Guide  

## Elixir ⚗️
For install the Elixir Language view the [official documentation](https://elixir-lang.org/install.html).
<br><br>

## Phoenix 🦅
In your favorite terminal type:

    mix archive.install hex phx_new 1.5.8
<br>

## PostegreSQL 🐘

You can install from here:
For install the PostgreSQL view th [official documentation](https://www.postgresql.org/download/).
<br><br>

## Inmana 📦
In your favorite terminal: 

  1. Clone this repository from Github

          git clone https://github.com/MatheusMuriel/InMana.git

  2. Entry in Inmana folder

          cd Inmana

  3. Install deps

          mix deps.get

  4. if your PostgreSQL is installed correctly, create Database structure and migrations

          mix ecto.setup
  
  5. Open Phoenix server
  
          mix phx.server


<a id="commands"></a>

# Other commands
- Open interactive terminal

      iex -S mix

- Open Phoenix server

      mix phx.server

- Open Phoenix server with interactive terminal

      iex -S mix phx.server

- Execute tests

      mix test
