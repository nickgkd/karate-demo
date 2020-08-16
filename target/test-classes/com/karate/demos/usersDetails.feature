
Feature: REST API GET call

Background:  
   * def expectedOutput = read('ExpectedResponse.json')

Scenario: test get call for user
  Given url 'https://reqres.in/api/users/2'
	When method GET
	Then status 200
	Then print response
	And match expectedOutput == response
	Then print "last_name-->", response.data.last_name
  
  