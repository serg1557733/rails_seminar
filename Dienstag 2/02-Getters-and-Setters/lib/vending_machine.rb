# frozen_string_literal: true

class VendingMachine
  attr_reader :user_balance_cents, :snack_price_cents
  attr_accessor :snack_count

  def initialize(snack_price_cents, snack_count)
    @user_balance_cents = 0
    @snack_count = snack_count
    @snack_price_cents = snack_price_cents
  end

  def insert_coin(input_cents)
    @user_balance_cents += input_cents
  end

  def buy_snack
    if @snack_count.positive? && @user_balance_cents >= @snack_price_cents
      @snack_count -= 1
      @user_balance_cents -= @snack_price_cents
    else
      puts 'Transaction failed: insufficient balance or no snacks available'
    end
  end
end
