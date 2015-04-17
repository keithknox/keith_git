require 'unirest'

@response = Unirest.get "https://george-vustrey-weather.p.mashape.com/api.php?location=Washington+DC",
headers:{
"X-Mashape-Key" => "aDhV4sAB9BmshYzXRpKK7mCPLTrCp12pQnBjsnvDkzUZA4AIZE",
"Accept" => "application/json"
}

  puts @response.body[0]
