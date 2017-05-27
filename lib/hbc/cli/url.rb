class Hbc::CLI::Url < Hbc::CLI::Base
  def self.run(*cask_tokens)
    if cask_tokens.empty?
      odebug "Showing project homepage"
      puts "http://caskroom.io/"
    else
      cask_tokens.each do |cask_token|
        odebug "Showing homepage for Cask #{cask_token}"
        cask = Hbc.load(cask_token)
        puts cask.homepage
      end
    end
  end

  def self.help
    "shows the homepage of the given Cask"
  end
end
