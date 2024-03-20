<a name="readme-top"></a>

<div align="center">

  <br/>
  <h1>Motorhub</h1>

</div>

## 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [Schema](#ER-diagram)
  - [API Documentation](#api-documentation-)
  - [🛠 Built With ](#-built-with-)
  - [Tech Stack ](#tech-stack-)
  - [Key Features ](#key-features-)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Usage](#usage)
    - [Run tests](#run-tests)
- [👥 Authors ](#-authors-)
- [🔭 Future Features:](#-future-features)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# Motorhub <a name="about-project"></a>

The Motorhub - Online Motor Reservation System is a web application designed to provide users with the ability to reserve, view, and manage motors such as cars and bikes reservation for purchases. The system aims to streamline the process of finding and booking motors from various locations, making it convenient for both users and motor providers.

<!-- ER diagram"-->

# Database Schema <a name="ER-diagram"></a>
#### Link to [ER-diagram](https://drawsql.app/teams/binod-1/diagrams/motorhub-final-capstone-project)

<div align="center">
 <img src="https://github.com/binodbhusal/final_capstone_backend/blob/dev/app/ER_diagram/drawSQL-motorhub-final-capstone-project-export-2023-10-11.png?raw=true" width="600"  height="auto" />
  <br/>
</div>

#### Link to [Frontend](https://github.com/binodbhusal/motorhub_frontend.git)
#### Link to [API Documentation](https://motorhubbackend.up.railway.app/api-docs/index.html)

### API URL 
You can use this URL address to consump data from our API using [localy](localhost:3000/) or using the URL provided by railway [https://motorhubbackend.up.railway.app](https://motorhubbackend.up.railway.app)

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>
- Ruby
- PostgreSQL
<details>
  <summary>Framework</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

1. User Authentication: The system allows users to create accounts and log in.
2. Motors Listings: Motors providers can list their available motors. Each listing includes details such as the brand, model, manufacturer, price, description, and location.
3. Reservation Management: Users can view available motors at different locations and make reservations.
4. Add and delete motors in including location.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo <a name="live-demo"></a>

 Click on this [Motorhub Live Demo](https://motorhub.netlify.app/) to view the live-demo of project. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

Follow these steps in order to run ruby code.

### Prerequisites

First, you need to ensure that you have Rails and Ruby installed on your computer.

### Setup

It varies depending on your operating system so here are some links to help you install it on [Windows](https://gorails.com/setup/windows/10) and on [Ubuntu](https://www.ruby-lang.org/en/documentation/installation/#apt).

For MacOS run the following commands

```sh
  brew install rbenv ruby-build
  # Add rbenv to bash so that it loads every time you open a terminal
  echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
  source ~/.bash_profile

  # Install Ruby
  rbenv install 3.2.2 
  rbenv global 3.2.2 
  ruby -v
```

This example shows how to install Ruby 3.2.2, you can check to see if there is a newer version [here](https://www.ruby-lang.org/en/downloads/releases/). Iy is also assumed that you have [homebrew](https://brew.sh/) already installed on your Mac.

### Usage

Before running the project, make sure you have Ruby and Rails installed on your system. You can refer to the [official Ruby on Rails installation guide](https://guides.rubyonrails.org/getting_started.html) for instructions on how to install them.
Once you have ruby installed, [clone this repository](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)

First navigate to the project directory in your terminal:
```
  cd your-project-directory
```

Then install the required gems by running in the terminal:
```
  bundle install
```
Create the database by running:
```
  rails db:create
```
Run the database migrations to set up the database schema:
```
  rails db:migrate
```
Optionally, you can seed the database with initial data (if the project provides seed data) by running:
```
  rails db:seed
```
Start the Rails server:
```
  rails server
```
To see all API Endpoints available, in your preferred browser, navigate to:
```
  https://motorhubbackend-production.up.railway.app/api-docs/index.html
```

### Run tests
To run tests, run the following command in the terminal:
```
  rspec
```
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>
### 👤 **Binod Bhusal**

- GitHub: [@binodbhusal](https://github.com/binodbhusal)
- Twitter: [@twitter](https://twitter.com/Binod_ironLad)
- LinkedIn: [@linkedin](https://www.linkedin.com/in/binodbhusal/)

### 👤 **Dieum Akonkwa**:

- GitHub: [@dieum512](https://github.com/dieum512)
- Twitter: [@twitter](https://twitter.com/dieumakonkw)
- LinkedIn: [@linkedin]()

### 👤 **Salomon Tshobohwa**:

- GitHub: [@Tshobohwa ](https://github.com/Tshobohwa)
- LinkedIn: [@linkedin](https://www.linkedin.com/in/tshobohwasalomon/)

### 👤 **Alijan Rahimi**

- GitHub: [@rahimialijan](https://github.com/rahimialijan)
- Twitter: [@twitter](https://twitter.com/AlijanRahimi10)
- LinkedIn: [@linkedin](https://www.linkedin.com/in/alijan-rahimi-18389ab3/)

# 🔭 Future Features:

- Add Authorization and online payment  system for purchases.

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/binodbhusal/motorhub_backend/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you liked this project, give it a ⭐️ and kindly send to me an e-mail expressing it, it would make our day and fuel our motivation.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

Hats off to Murat Korkmaz for designing the awesome template that was used. ✨
Microverse for giving us this chance
The amazing code reviewers for making us improve every day 👍

Original design idea by [Murat Korkmaz on Behance](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
