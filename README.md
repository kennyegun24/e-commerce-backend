<!-- PROJECT DESCRIPTION -->

  # 📖 [Shopping Spree backend] <a name="about-project"></a>

> This is the bckend for a nearly fully functional ecommerce store I created. I created it using Ruby in Rails, Stripe for payment, JWT for secured logins and account creation, PosgreSQL database, and Bcrypt to hash passwords before being stored to the database.

## 🛠 Built With <a name="built-with">Ruby on Rails</a>
<img src="https://github.com/kennyegun24/e-commerce-backend/assets/109461921/e51e3f6d-1427-4238-acf8-f54ee3868b79" width="70%"/>
<br />

### Links to the frontends...

- <a href="https://github.com/kennyegun24/e-commerce-frontend">General users frontend</a>

- <a href="https://github.com/kennyegun24/e-commerce-store-frontend">Store owner dashboard</a>

- <a href="https://github.com/kennyegun24/e-commerce-admin-dashboard">Admin dashboard</a>

### Tech Stack <a name="tech-stack">Backend</a>

<details>
  <summary>Server</summary>
  <summary>Api</summary>
  <ul>
    <li><a >Ruby on Rails</a></li>
    <li><a >JWT</a></li>
    <li><a >PostgreSQL</a></li>
    <li><a >Stripe gateway</a></li>
  </ul>
</details>

## Description
#### User registration
+ A user is registered using Email, name and Password.
+ Once a user is registered, a stripe ID is automatically assigned to the user directly from stripe
+ When a user is registered, a jwt token is created to enable the user to access the api endpoints

#### User login
+ A user can login using Email and Password

### Categories
+ All products in the store are kept based on categories... (gucci bag will be under BAGS category, Samsung galaxy A40 will be stored under phones)
+ A new category can only be created by an admin

### Products
+ Products can only created by an admin
+ Products are stored under a category and also owned by a store.

### Stores
+ All items in the store are added only by an admin
+ Each stores have products under them (only if they have products registered accepted by an admin)

### Store Login and creation
+ A store can be created using Email, store_name, image and Password.
+ Login using Email and pssword



## 💻 Getting Started <a name="getting-started"></a>


To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need: `Ruby and Ruby on Rails to be installed on your local machine`

### Setup

Clone this repository to your desired folder: `https://github.com/kennyegun24/e-commerce-backend.git`


### Install

Install this project with: `bundle i or bundle install`


### Usage

To run the project, execute the following command: `rails server or rails s`


### Deployment: You can use any deployment service of your choice



## 👥 Authors <a name="authors"></a>

👤 **Author**

- GitHub: [Kenny Egun](https://github.com/kennyegun24)
- Twitter: [Kenny Egun](https://twitter.com/kenny_eLiasUTD)
