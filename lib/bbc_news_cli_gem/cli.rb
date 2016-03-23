class BbcNewsCliGem::CLI

  attr_reader :web_page

  def initialize
    front_page_scraper = BbcNewsCliGem::Scraper.new("http://www.bbc.com/news")
    @web_page = front_page_scraper.scrape_front_page
  end

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
    puts "'exit' - quits this gem"
    puts seperator
  end

  def welcome
    puts "Hello! Welcome to the BBC News CLI Gem"
    help
  end

  def main_loop
    puts "What would you like to do?"
    input = gets.chomp
    case input
    when "help"
      help
      main_loop
    when "articles"
      web_page.display_articles
      main_loop
    when "exit"
      puts "Whatevery, I didn't want you to read the news anyway. "
    when /^article/
      puts "Looks like you want to read and article"
      main_loop
    else
      puts "I'm sorry, I don't know what you're saying"
      main_loop
    end
  end

end
