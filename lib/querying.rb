def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT Books.title, Books.year 
  FROM Books
  WHERE Books.series_id = 1
  ORDER BY Books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT Characters.name, Characters.motto 
  FROM Characters
  ORDER BY LENGTH(Characters.motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
"SELECT Characters.species, COUNT(Characters.species) 
FROM Characters
GROUP BY Characters.species
ORDER BY Characters.species DESC limit 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT DISTINCT Authors.name, Subgenres.name
  FROM Authors
  INNER JOIN Subgenres, Series
  ON Subgenres.id = Authors.id;
  "
end

def select_series_title_with_most_human_characters
  "SELECT DISTINCT Series.title
  FROM Series, Characters
  ON Series.author_id = characters.author_id
  GROUP BY Series.title
  ORDER BY COUNT(Characters.species) ASC LIMIT 1;"

end

def select_character_names_and_number_of_books_they_are_in
  "SELECT Characters.name, COUNT(character_books.character_id)
   FROM Characters
   INNER JOIN Character_books
   ON Characters.id = Character_books.character_id
   GROUP BY Characters.name
   ORDER BY COUNT(Character_books.character_id) DESC, Characters.name ASC
   ;"
end
