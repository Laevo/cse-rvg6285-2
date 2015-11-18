CSE-RVG6285-2
=============

**Answers**

  1. The external data source I've used is [Census.gov](http://www.census.gov/population/international/data/countryrank/rank.php).  
  I took the dataset containing popualtion of top 100 populated countries, stored it in a .json file locally --- pgdata.json and redismongo.json  
  Then loaded the Heroku data sources by these jsons.

  2. First load the data sources by `heroku run rake db:seed`.  
	To get data according to the primary key enter  
  	`heroku run rake pg_get_pk`  
  	`heroku run rake redis_get_pk`  
  	`heroku run rake mongo_get_pk`  
  	These scripts will prompt user to give the primary key ex. China, India, United States and will return the population of the entered country.  
  	To get data according to the non primary attribute enter  
  	`heroku run rake pg_get_nonpk`  
  	`heroku run rake redis_get_nonpk`  
  	`heroku run rake mongo_get_nonpk`  
  	These scripts will prompt user to enter minimum and maximum population values ex. 1941212 and 123342334 and will return all the countries having population in this range.

  3. I found retrieving data from primary keys to be easy as only one value had to be entered and searched for.

  4. I found making data source connections and retrieving data from non primary attributes to be hard as I didn't find any way of searching through values in redis, so had to search through keys, fetch the value for each key and then put conditions on those values.