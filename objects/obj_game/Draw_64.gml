draw_points_on_explosions = function() {
	var _element = array_pop(draw_scores)
	var _new_draw_scores = []

	while !is_undefined(_element) {
		draw_text_colour(floor(_element.x), floor(_element.y - _element.counter), 
						 "" + string(_element.points),
						 c_lime, c_lime, c_green, c_green, 1);
		if(_element.counter<60){
			_element.counter += 1;
			array_push(_new_draw_scores, _element)
		}
		_element = array_pop(draw_scores)
	}

	draw_scores = _new_draw_scores
}


draw_text(10, 10, "score: " + string(points));

draw_points_on_explosions()