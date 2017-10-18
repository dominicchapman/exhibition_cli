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
    @exhibitions.each.with_index(1) do |exhibition, i|
      puts "#{i}. #{exhibition.name}"
    end
  end

  def menu
    choice = nil
    while choice != 'exit'
      puts "Learn more about an exhibition by typing its number, list all exhibitions with list, or type exit to finish."
      choice = gets.strip.downcase

      if choice.to_i > 0
        exhibition = @exhibitions[choice.to_i - 1]
        puts "#{exhibition.name} \n#{exhibition.url}"
      elsif choice == 'list'
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