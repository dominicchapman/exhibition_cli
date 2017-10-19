class ExhibitionCli::Exhibition

  attr_accessor :name, :duration, :url

  def self.all   
    self.scrape_exhibitions
  end

  def self.scrape_exhibitions
    exhibitions = []

    moma = 'https://www.moma.org'

    doc = Nokogiri::HTML(open(moma + '/calendar/exhibitions'))

    doc.css('.calendar-tile-list__section-featured').each do |exhibition_item|
      exhibition_item.css('.calendar-tile a').each do |exhibition_link|
        exhibition = self.new
        exhibition.name = exhibition_link.css('h3.calendar-tile__title').text.strip
        exhibition.url  = moma + "#{exhibition_link.attr('href')}"
        exhibitions << exhibition
      end
    end
    
    exhibitions
  end

end