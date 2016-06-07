class RootController < ApplicationController
  def index
    latest = Condition.order(created_at: :desc).last
    @latest = {temp: latest.temp, humid: latest.humid, hpa: latest.hpa}
    @temp = []
    @humid = []
    @hpa = []
    @x = []
    case params[:type]
    when "daily"
      params[:time] ||= Time.now.strftime("%H:%M")
      h,m = params[:time].split(':')
      order = Condition.order(created_at: :desc).where("hour(created_at) = ?", h).where("minute(created_at) = ?", (m.to_i*0.1).floor.to_s + '0')
      order.limit(30).reverse.each_with_index do |d, i|
        @x << d.created_at.to_s(:date)
        @temp << d.temp
        @humid << d.humid
        @hpa << d.hpa
      end
    else
      order = Condition.order(created_at: :desc).where("minute(created_at) = ?", 0)
      order.limit(30).reverse.each_with_index do |d, i|
        if( i == 0 || (d.created_at.hour == 0 && d.created_at.min == 0) )
          @x << d.created_at.to_s(:default)
        else
          @x << d.created_at.to_s(:time)
        end
        @temp << d.temp
        @humid << d.humid
        @hpa << d.hpa
      end
    end
  end
end
