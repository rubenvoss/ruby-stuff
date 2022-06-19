movies = {
    Batman: 4,
    "Hello Kitty": 2
  }
  
  puts "type in add / update / display / delete"
  choice = gets.chomp
  
  case choice
    when "add"
      puts "what is your movie title?"
      #gets user input and saves it to a symbol
      title = gets.chomp.to_sym
      puts "what is the movie rating?"
      rating = gets.chomp.to_i
      #if the movie is not yet in the database, this adds movie and rating to the database
      if movies[title] == nil
        movies[title] = rating
        puts "#{title} with the rating #{rating}  has been added!"   
      else  
        puts "this movie already exists!"
      end
  
    when "update"
      puts "which title? "
      #gets user input and saves it to a symbol
      title = gets.chomp.to_sym
      #if the movie is not in the database (nil), this prints out a text
      if movies[title] == nil
        puts "movie is not in the database."
      #if the movie is in the database, this gets the rating from the user & prints out all movies & ratings
      else
        puts "updating database... rating pls: "
        movies[title] = gets.chomp
        puts movies
      end
    #this displays all movies and ratings like this: "movie: rating"
    when "display"
      movies.each { |movie, rating|
        puts "#{movie}: #{rating}"
      }
  
    when "delete"
      puts "what title should i delete? "
      #gets user input and saves it to a symbol
      title = gets.chomp.to_sym
      if movies[title] == nil
        puts "movie is not in database"
      #deletes movie and prints which ones are left
      else
        movies.delete(title)
        puts "movie deleted! these movies are left:"
        puts movies
      end
  
    else
      puts "Error!"
  end