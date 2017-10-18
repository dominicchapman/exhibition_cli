# CLI controller
class ExhibitionCli::Cli

  def call
    list_exhibitions
    menu
    adios
  end

  def list_exhibitions
    puts "Current exhibitions:"
    @exhibitions = ExhibitionCli::Exhibition.all
  end

  def menu
    choice = nil
    while choice != 'exit'
      puts "Learn more about an exhibition by typing its number, list all exhibitions with list, or type exit to finish."
      choice = gets.strip.downcase
      case choice
      when "1"
        puts "More info on Items: Is Fa..."
      when "2"
        puts "More info on Louise Bourg..."
      when "list"
        list_exhibitions
      else
        "Hmm, can't find that. Type list or exit."
      end
    end
  end

  def adios
    puts "Every exit is also an entrance... Goodbye, for now."
  end

end