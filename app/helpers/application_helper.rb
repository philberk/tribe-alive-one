module ApplicationHelper

  def current_order
    if !session[:order_id].nil?
      OrderList.find(session[:order_id])
    else
      OrderList.new
    end
  end

end
