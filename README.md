# karateDemo
Karate was released as an open-source tool by Intuit. 
The tool is designed to be used for automated API testing and has all the required features to make API testing.
This is Demo project with an example to automate some API's of PetStore project.

PetStore API's : https://petstore.swagger.io/


Dependencies:

Make sure you have Java (preferably java 8) & Maven installed and path configure on your system, if not follow the vendor instructions for installing them on your operating system.

Running Tests:
After checking out the code build the project using :

Run command(inside the project folder where pom.xml file is located) : mvn clean install -DskipTests ( make sure maven is installed and configure) to install the dependent jars.

Running tests using eclipse :

1. run junit test from your IDE eclipse or intellij.

Running tests using command line( can be used when wish to run the tests in CI/CD) :

1. Go to project folder(which has pom file)
2. run maven command : mvn test
