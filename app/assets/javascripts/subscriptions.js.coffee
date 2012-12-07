# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  subscription.setupForm()

subscription =
  setupForm: ->
    $('#new_subscription').submit ->
      $('input[type=submit]').attr('disabled', true)
      if $('#card_number').length
        subscription.processCard()
        false
      else
        true
  
  processCard: ->
    card =
      number: $('#card_number').val()
      cvc: $('#card_code').val()
      exp_month: $('#card_month').val()
      exp_year: $('#card_year').val()
    paymill.createToken(card, subscription.handlePaymillResponse)
  
  handlePaymillResponse: (error, result) ->
    if error
      $('#paymill_error').text(error.apierror)
      $('input[type=submit]').attr('disabled', false)
    else
      $('#subscription_paymill_card_token').val(result.token)
      $('#new_subscription')[0].submit()
