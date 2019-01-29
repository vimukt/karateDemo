Feature: Testing the Petstore feature.
Testing the CRUD operation for petstore pet api.

Scenario: Add a new pet to the store
Given url petStoreUrl
And request {  "id": 1, "category": {"id": 1 ,"name": "Pug" },"name": "Charlie", "photoUrls": ["https://giphy.com/gifs/puppy-high-five-o22WjU9bIgFWM"], "tags": [{ "id": 0,"name": "dog1"}],"status": "available" }
When method post
Then status 200


Scenario: Updtae an existing pet

Given url petStoreUrl
And request {  "id": 1, "category": {"id": 1 ,"name": "Pug" },"name": "Charlie Chaplin", "photoUrls": ["https://giphy.com/gifs/puppy-high-five-o22WjU9bIgFWM"], "tags": [{ "id": 0,"name": "dog1"}],"status": "available" }
When method put
And match response.category.name contains "Pug"
And match response.name contains "Charlie Chaplin"
Then status 200


Scenario: Find pet by ID
Given url petStoreUrl
Given path '/1'
When method get
Then status 200
And match response.category.name contains "Pug"

