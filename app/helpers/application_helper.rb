module ApplicationHelper

  # def current_order
  #   if session[:order_id].nil?
  #     OrderList.new
  #   else
  #     OrderList.find(session[:order_id])
  #   end
  # end

  def current_order
    @current_order ||= OrderList.find_by_id(session[:order_id]).presence || OrderList.new
  end

end
