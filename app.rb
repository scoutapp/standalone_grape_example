# You know, like grapes.

require 'grape'
require 'json'

module Wine
class API < Grape::API
  #version 'v1'
  # format :json
  #prefix :api

  resource :status do
    desc 'get me some numbers'

    get 'numbers/:upto' do
      howmany = 10
      data = File.read(File.dirname(__FILE__) + "/largejson.json")

      @json = JSON.parse(data)
      @json = JSON.parse(data)
      @json = JSON.parse(data)
      @json = JSON.parse(data)
      sleep 1

      upto = params[:upto].to_i
      ns = (1..howmany).to_a.map { rand(upto) }
      { name: "Scout", numbers: ns }
    end
  end
end
end
