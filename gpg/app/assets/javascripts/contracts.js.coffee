# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
 $('#contract_account_code').autocomplete
   source: $('#contract_account_code').data('autocomplete-source')

# $("select").change ->
#  $(@).after "<span class='change'> change() triggered! </span>"
#  $("span").filter('.change').fadeout 4000
