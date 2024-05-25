draw_text(10, 10, "score: " + string(points));

var _draw_score = function(_element, _index){
	draw_text_colour(floor(_element.x), floor(_element.y - _element.counter), 
					"" + string(_element.points),
					c_lime, c_lime, c_green, c_green, 1);
	if(_element.counter>60){
		array_delete(draw_scores, _index, 1)
	}else{
		_element.counter += 1;
	}
}

array_foreach(draw_scores, _draw_score)