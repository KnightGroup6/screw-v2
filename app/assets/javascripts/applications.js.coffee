# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


jQuery ->
	jobs = $('#application_job_id').html()
	$('#application_trade_id').change ->
		trade = $('#application_trade_id :selected').text()
		options = $(jobs).filter("optgroup[label='#{trade}']").html()
		if options
			$('#application_job_id').html(options).parent().show()
		else
			$('#application_job_id').empty().parent().hide()

	