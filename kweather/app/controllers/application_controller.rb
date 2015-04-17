class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

        def index
        @response = HTTParty.get("response = Unirest.get "https://george-vustrey-weather.p.mashape.com/api.php?location=Washington+DC",
  headers:{
    "X-Mashape-Key" => "aDhV4sAB9BmshYzXRpKK7mCPLTrCp12pQnBjsnvDkzUZA4AIZE",
    "Accept" => "application/json"
  }")


    return response.parsed_response

  end
