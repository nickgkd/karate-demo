
Feature:
   
Scenario: test get call for user
  Given url 'https://reqres.in/api/users/2'
	When method GET
	Then status 200
	Then print response
  
  