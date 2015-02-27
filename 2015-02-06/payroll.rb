# Employees direct deposit paychecks into their accounts.
# They all work 40 hour weeks and get paid every Friday
# If no one withdraws money, what is the balance two Saturdays from now?
#
# Enhancements:
# May want to add another parameter to weekly_pay for number of hours

def weekly_pay(rate, hours = 40)
  hours * rate
end

def deposit(current_balance, amount)
  current_balance + amount
end

def format_money(amount)
  format('%.2f', amount)
end

julie_balance = 3500.01
julie_rate = 7.50
ted_balance = 2750.00
ted_rate = 10.00
betty_balance = 2600.25
betty_rate = 12.50

julie_balance = deposit(julie_balance, 2 * weekly_pay(julie_rate))
ted_balance = deposit(ted_balance, 2 * weekly_pay(ted_rate))
betty_balance = deposit(betty_balance, 2 * weekly_pay(betty_rate))

puts "Julie's new balance: #{format_money(julie_balance)}"
puts "Ted's new balance: #{format_money(ted_balance)}"
puts "Betty's new balance: #{format_money(betty_balance)}"
