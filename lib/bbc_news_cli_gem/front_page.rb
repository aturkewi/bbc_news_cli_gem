class BbcNewsCliGem::FrontPage

  attr_reader :articles, :link

  def initialize(link)
    @link = link
    @articles = []
  end

  def display_articles
    articles.each_with_index do | article, i |
      puts "#{i+1}. #{article.title}"
    end
  end


end
