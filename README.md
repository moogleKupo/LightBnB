# LightBnB

LightBnB is an Airbnb-inspired project designed for learning SQL. It combines JavaScript with SQL queries to present available property listings and essential property details like the number of bedrooms and average ratings. Users can log in or create new accounts, view their own property listings and reservations, and create new property listings. The application also includes a search feature to filter through all available properties.

## How to Use

1. Begin by installing dependencies with the command: `npm i`.

2. Populate a database named `lightbnb` by executing the provided migration and seed SQL files.

3. Launch the server by running: `npm run local`.

4. Access the application by opening `localhost:3000` in your web browser.

## Project Structure

```
.
├── db
│   ├── json
│   └── database.js
├── public
│   ├── javascript
│   │   ├── components 
│   │   │   ├── header.js
│   │   │   ├── login_form.js
│   │   │   ├── new_property_form.js
│   │   │   ├── property_listing.js
│   │   │   ├── property_listings.js
│   │   │   ├── search_form.js
│   │   │   └── signup_form.js
│   │   ├── libraries
│   │   ├── index.js
│   │   ├── network.js
│   │   └── views_manager.js
│   ├── styles
│   │   ├── main.css
│   │   └── main.css.map
│   └── index.html
├── routes
│   ├── apiRoutes.js
│   └── userRoutes.js
├── styles  
│   ├── _forms.scss
│   ├── _header.scss
│   ├── _property-listings.scss
│   └── main.scss
├── .gitignore
├── package-lock.json
├── package.json
├── README.md
└── server.js
```

- The `db` directory handles all database interactions.
  - The `json` subdirectory contains sample data in `.json` files.
  - `database.js` manages database queries. It currently uses `.json` files for data but can be adapted to connect to a real database.
- The `public` folder contains HTML, CSS, and client-side JavaScript.
  - `index.html` serves as the application's entry point; it's the sole HTML page because this is a single-page application.
  - The `javascript` directory houses all client-side JavaScript files.
    - `index.js` initializes the application by rendering property listings.
    - `network.js` handles all AJAX requests to the server.
    - `views_manager.js` controls which components are displayed on the screen.
    - The `components` subdirectory contains individual HTML components created using jQuery.
- The `routes` directory contains router files responsible for handling HTTP requests to paths like `/users/something` or `/api/something`.
- The `styles` directory contains all Sass files.
- `server.js` serves as the application's entry point and connects the routes to the database.

## Author
Taylor Maine
github: moogleKupo
Contributor: lighthouse-labs (github)