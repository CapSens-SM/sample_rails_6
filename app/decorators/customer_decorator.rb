class CustomerDecorator < Draper::Decorator
  delegate_all

  def name
    "#{firstname&.capitalize} #{lastname&.upcase}"
  end

  def membership_amount_in_dollars
    h.number_to_currency(membership_amount, locale: :en)
  end

  def state_completition_in_percent
    customer_state_index = Customer.state.values.index(state).to_f + 1
    
    return 100 if state == :terminated

    total_states_count_without_terminated_state = Customer.state.values.length - 1
    completion = customer_state_index / total_states_count_without_terminated_state
    
    (completion * 100).round(0)
  end
end
