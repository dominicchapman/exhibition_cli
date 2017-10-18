# CLI controller
class ExhibitionCli::Cli

  def call
    list_exhibitions
    menu
  end

  def list_exhibitions
    puts "Current exhibitions:"
    puts <<~HEREDOC
      1. Items: Is Fashion Modern?
      2. Louise Bourgeois: An Unfolding Portrait
      ...
    HEREDOC
  end

  def menu
    puts "Which exhibition would you like more information about?"
  end

end