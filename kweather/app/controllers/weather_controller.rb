class WeatherController < ActionController::Base

  def get



  end

  def index




    @response = Unirest.get "https://george-vustrey-weather.p.mashape.com/api.php?location=Washington+DC",
  headers:{
  "X-Mashape-Key" => ENV['secret_key'],
  "Accept" => "application/json"
  }



  end

end
