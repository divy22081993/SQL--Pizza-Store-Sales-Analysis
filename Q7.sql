-- find the category-wise distribution of pizas
select category, count(name) from pizza_types 
group by category;