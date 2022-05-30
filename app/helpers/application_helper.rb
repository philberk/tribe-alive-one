module ApplicationHelper

  def current_order
    if !session[:order_id].nil?
      OrderList.find[:order_id]
    else
      OrderList.new
    end
  end

end
