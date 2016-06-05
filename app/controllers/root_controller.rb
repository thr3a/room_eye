class RootController < ApplicationController
  def index
    @temp = []
    @humid = []
    @hpa = []
    @x = []
    Condition.order(created_at: :desc).limit(30).reverse.each_with_index do |d, i|
      if( i == 0 || (d["created_at"].hour == 0 && d["created_at"].min == 0) )
        @x << d["created_at"].to_s(:default)
      else
        @x << d["created_at"].to_s(:time)
      end
      @temp << d["temp"]
      @humid << d["humid"]
      @hpa << d["hpa"]
    end
    # [{"id":6,"temp":28.84,"humid":53.94,"hpa":1010.03,"created_at":"2016-05-26T00:40:03.000Z","updated_at":"2016-05-26T00:40:03.000Z"},
  end
end
