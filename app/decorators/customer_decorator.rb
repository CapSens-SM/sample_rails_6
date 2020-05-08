class CustomerDecorator < Draper::Decorator
  delegate_all

  def display_name
    "#{firstname&.capitalize} #{lastname&.upcase}"
  end

end
