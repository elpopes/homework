smaller_exponent = power - 1
base_to_the_smaller_exponent = exponent(base, smaller_exponent)
exponent(base, power) = base * base_to_the_smaller_exponent

def retirement_savings_estimate_based_on(my_age)
    my_kids_age = my_age / 2
    retirement_age = 65
    years_til_retirement = retirement_age - my_kids_age
    money_in_bank = my_kids_age ** 2
    retirement_savings = money_in_bank * years_til_retirement
end