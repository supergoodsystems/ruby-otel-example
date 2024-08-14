require'uri'
require 'net/http'
class DiceController < ApplicationController
  def roll
    uri = URI('https://supergood-testbed.herokuapp.com/200?key=val')
    res = Net::HTTP.get_response(uri)
    puts res.body
    render json: res.body
  end
end
