class BbcNewsCliGem::Scraper

  attr_reader :raw_page, :link

  def initialize(link)
    @link = link
    @raw_page = Nokogiri::HTML(open(link))
  end

  def scrape_front_page
    web_page = BbcNewsCliGem::FrontPage.new(link)
    create_articles(all_articles, web_page)
    web_page
  end

  def get_summary
    
  end

  private

  def create_articles(articles, web_page)
    articles.each do | raw_title |
      title = raw_title.css('.title-link__title-text').text.strip
      link = raw_title.attribute('href').text.strip
      article = BbcNewsCliGem::Article.new(web_page, title, link)
    end
  end

  def all_articles
    raw_page.css('a.title-link')
  end

end
