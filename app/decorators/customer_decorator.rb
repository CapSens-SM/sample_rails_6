class CustomerDecorator < Draper::Decorator
  delegate_all

  def name
    "#{firstname&.capitalize} #{lastname&.upcase}"
  end

  def membership_amount_in_dollars
    h.number_to_currency(membership_amount, locale: :en)
  end

end
