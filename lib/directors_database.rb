def list_of_directors(source)
    names = []
   i = 0

   while i < source.length do
     names << source[i][:name]
     i += 1
   end

   names
 end
 
 def total_gross(source)
   list_of_directors(source).reduce(0){|total, name| total +=  directors_totals(source)[name]}
   dir_to_earnings_hash = directors_totals(source)
   dir_names = list_of_directors(source)
   i = 0

   total = 0

   while i < dir_names.length do
     dir_name = dir_names[i]
     total += dir_to_earnings_hash[dir_name]
     i += 1
   end

   total
 end
 