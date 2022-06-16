movies = {
    Batman: 4,
    "Hello Kitty": 2
  }
  
  puts "type in add / update / display / delete"
  choice = gets.chomp
  
  case choice
    when "add"
      puts "what is your movie title?"
      title = gets.chomp.to_sym
      puts "what is the movie rating?"
      rating = gets.chomp.to_i
      if movies[title] == nil
        movies[title] = rating
        puts "#{title} with the rating #{rating}  has been added!"   
      else  
        puts "this movie already exists!"
      end
  
    when "update"
      puts "which title? "
      title = gets.chomp.to_sym
      if movies[title] == nil
        puts "movie is not in the database."
      else
        puts "updating database... rating pls: "
        movies[title] = gets.chomp
        puts movies
      end
  
    when "display"
      movies.each { |movie, rating|
        puts "#{movie}: #{rating}"
      }
  
    when "delete"
      puts "what title should i delete? "
      title = gets.chomp.to_sym
      if movies[title] == nil
        puts "movie is not in database"
      else
        movies.delete(title)
        puts "movie deleted! these movies are left:"
        puts movies
      end
  
  
    else
      puts "Error!"
  end