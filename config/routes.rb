Rails.application.routes.draw do
  get '/random_fortune' => 'api/fortunes#random_fortune'
  get '/lotto_numbers' => 'api/fortunes#lucky_numbers'
  get '/website_tracking' => 'api/fortunes#tracking'
  get '/beer' => 'api/fortunes#beer_song'
end
