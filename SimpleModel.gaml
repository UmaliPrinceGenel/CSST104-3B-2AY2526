/**
* Name: SimpleModel
* Based on the internal empty template. 
* Author: Prince Genel
* Tags: 
*/


model SimpleModel

global {
		int nb_people <- 100;
	init{
		create people number: nb_people;
	}
}
species people skills: [moving]{
	float size <- 2.0;
	rgb color <- #blue;
	
	reflex move{
		do wander;
	}
	
	aspect base {
		draw circle(size) color: color;
	}
	
	
}


experiment SimpleModel type: gui {

	parameter "Number of People:" var: nb_people category: "Population" min: 10 max: 1000;
	
	output {
	 display MainDisplay { 
		species people aspect: base;
	 }

	}
}