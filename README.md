# Online Store [Academic Project]

A website and online store developed using Java, J2EE, Apache Tomcat, and Eclipse IDE. All data is stored in a MySQL database. Users can register, sign in, and purchase goods. They can place the items in the cart and checkout when ready. Visitors do not have to be logged in to buy items.

<img width="1440" alt="Screen Shot 2019-10-12 at 4 30 22 PM" src="https://user-images.githubusercontent.com/19762832/67256207-8570d680-f44b-11e9-8c60-f0825b8c7472.png">

&nbsp;&nbsp;&nbsp;

<img width="1440" alt="Screen Shot 2019-10-12 at 4 30 38 PM" src="https://user-images.githubusercontent.com/19762832/67256208-8570d680-f44b-11e9-9e1b-9779b0c6d3b0.png">

&nbsp;&nbsp;&nbsp;

<img width="961" alt="Screen Shot 2019-10-12 at 4 31 27 PM" src="https://user-images.githubusercontent.com/19762832/67256209-8570d680-f44b-11e9-82b8-149858ddd623.png">

&nbsp;&nbsp;&nbsp;

<img width="1440" alt="Screen Shot 2019-10-12 at 4 31 53 PM" src="https://user-images.githubusercontent.com/19762832/67256210-8570d680-f44b-11e9-8b2f-d6ff8477ca68.png">

&nbsp;&nbsp;&nbsp;

<img width="1440" alt="Screen Shot 2019-10-12 at 4 41 54 PM" src="https://user-images.githubusercontent.com/19762832/67256212-8570d680-f44b-11e9-8fdf-3366b2bf891a.png">

&nbsp;&nbsp;&nbsp;
## Getting Started
### Prerequisites
To run the project locally you will need to download and install Eclipse and Apache Tomcat 9. Use Java 11. You also need to connect to a MySQL database. Download and install the MySQL 5.7 server on your machine.

### How to run the project
* Clone the repository to your local machine:
`git clone https://github.com/iuriepopovici/online-store`
* Find and replace the placeholders in `online-store/src/porcupine_pagoda/DBConnect.java`:
[DATABASE_USER], [DATABASE_PASSWORD], and [DATABASE_URL]
This step is necessary to establish database connection.
* Start the MySQL server
* In Eclipse Navigator, rigth-click on the Project Folder:
  Run As -> Run On Server
  Follow the instructions in Eclipse to create a Tomcat v9 server
* Visit [http://localhost:8080/paulas_porcupine_pagoda/](http://localhost:8080/paulas_porcupine_pagoda/) in your web browser to view the app.


## Authors

* **Iurie Popovici**  - *Initial work* - 
* **Armando Gonzalez**  - *Initial work* - 
