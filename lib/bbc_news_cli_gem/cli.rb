class BbcNewsCliGem::CLI
  def call
    welcome
    main_loop
  end

  def help
    seperator = "------------------------------------------"
    puts seperator
    puts "You can use any of the following commands:"
    puts "'help' - get options"
    puts "'articles' - shows a list of all articles"
    puts "'article <some number>' - opens the article of the number specified"
    puts seperator
  end

  def welcome
    puts "Hello! Welcome to the BBC News CLI Gem"
    help
  end

  def main_loop
    puts "What would you like to do?"
    
  end

end
