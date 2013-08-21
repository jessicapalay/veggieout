// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .
//= require_self

$(function() {

	if ($("#summary-chart").length > 0) {
    //Get context with jQuery - using jQuery's .get() method.
		var ctx = $("#summary-chart").get(0).getContext("2d");
		//This will get the first returned node in the jQuery collection.
		var myNewChart = new Chart(ctx);

		$("#week-button").click(function() {
    	$.get("/users/1/data?interval=week", function(response) {
	    	myNewChart.Line(response);
	    });
    })
    
    $("#month-button").click(function() {
    	$.get("/users/1/data?interval=month", function(response) {
	    	myNewChart.Line(response);
	    });
    })

    $("#year-button").click(function() {
	    $.get("/users/1/data?interval=year", function(response) {
	    	myNewChart.Line(response);
	    });
    })


    // get("/users/1/data?interval=30") do |response|
    // end
  }

  if ($("#vegetables-chart").length > 0) {
    //Get context with jQuery - using jQuery's .get() method.
		var ctx = $("#vegetables-chart").get(0).getContext("2d");
		//This will get the first returned node in the jQuery collection.
		var myNewChart = new Chart(ctx);
    
		myNewChart.Line(VeggieOut.data.vegetableData);
  }

  if ($("#fruit-chart").length > 0) {
    //Get context with jQuery - using jQuery's .get() method.
		var ctx = $("#fruit-chart").get(0).getContext("2d");
		//This will get the first returned node in the jQuery collection.
		var myNewChart = new Chart(ctx);
    
		myNewChart.Line(VeggieOut.data.fruitData);
  }

  if ($("#activity-chart").length > 0) {
    //Get context with jQuery - using jQuery's .get() method.
		var ctx = $("#activity-chart").get(0).getContext("2d");
		//This will get the first returned node in the jQuery collection.
		var myNewChart = new Chart(ctx);
    
		myNewChart.Line(VeggieOut.data.activityData);
  }

  if ($("#relaxation-chart").length > 0) {
    //Get context with jQuery - using jQuery's .get() method.
		var ctx = $("#relaxation-chart").get(0).getContext("2d");
		//This will get the first returned node in the jQuery collection.
		var myNewChart = new Chart(ctx);
    
		myNewChart.Line(VeggieOut.data.relaxationData);
  }

  if ($("#sleep-chart").length > 0) {
    //Get context with jQuery - using jQuery's .get() method.
		var ctx = $("#sleep-chart").get(0).getContext("2d");
		//This will get the first returned node in the jQuery collection.
		var myNewChart = new Chart(ctx);
    
		myNewChart.Line(VeggieOut.data.sleepData);
  }
});