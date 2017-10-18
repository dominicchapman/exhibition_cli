class ExhibitionCli::Exhibition

  attr_accessor :name, :duration, :url

  def self.all   
    self.scrape_exhibitions
  end

  def self.scrape_exhibitions
    exhibitions = []

    # exhibition_1 = self.new
    # exhibition_1.name = 'Items: Is Fashion Modern?'
    # exhibition_1.duration = 'Through January 28, 2018'
    # exhibition_1.url = 'https://www.moma.org/calendar/exhibitions/1638?locale=en'

    # exhibition_2 = self.new
    # exhibition_2.name = 'Louise Bourgeois: An Unfolding Portrait'
    # exhibition_2.duration = 'Through January 28, 2018'
    # exhibition_2.url = 'https://www.moma.org/calendar/exhibitions/3661?locale=en'

    # [exhibition_1, exhibition_2]

    exhibitions
  end

end