{% macro dollars_to_rs(column_name) %}    
	({{ column_name }} * 75)
{% endmacro %}