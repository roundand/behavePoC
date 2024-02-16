from behave import given, when, then
from twentyone import Dealer

@given('a dealer')  
def step_impl(context):
    context.dealer = Dealer() 

@given('a {hand}')  
def step_impl(context, hand):  # noqa: F811
    context.dealer = Dealer() 
    context.dealer.hand = hand.split(',')

@when('the round starts') 
def step_impl(context):  # noqa: F811
    context.dealer.new_round()

@when('the dealer sums the cards')  
def step_impl(context):  # noqa: F811
    context.dealer_total = context.dealer.get_hand_total()

@then('the dealer gives himself two cards') 
def step_impl(context):  # noqa: F811
    assert (len(context.dealer.hand) == 2)

@then('the {total:d} is correct') 
def step_impl(context, total):  # noqa: F811
    assert(context.dealer_total == total)


