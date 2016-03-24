class BbcNewsCliGem::Article

  attr_reader :title, :link, :web_page
  attr_accessor :intro

  def initialize(web_page, title, link)
    @title = title
    @link = link
    @web_page = web_page
    add_to_web_page(web_page) if valid_title_and_link
    self
  end

  def uniq_title
    !web_page.articles.find { | article |  article.title == title }
  end

  def valid_title_and_link
    title && title != "" && link && link != "" && uniq_title
  end

  def add_to_web_page(web_page)
    web_page.articles << self
    @web_page = web_page
  end

  def display
    intro ? intro : get_intro
    puts "*****************************************************************"
    puts "TITLE: #{title}"
    puts "-----------------------------------------------------------------"
    puts "INTRO: #{intro}"
    puts "*****************************************************************"
  end

  def open
    Launchy.open("#{BbcNewsCliGem::RootAddress + self.link}")
  end

  private

  def get_intro
    article_page = BbcNewsCliGem::Scraper.new(BbcNewsCliGem::RootAddress+link)
    self.intro = article_page.scrape_intro
  end

end
