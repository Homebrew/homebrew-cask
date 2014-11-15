class Cask::CLI::Home < Cask::CLI::Base
  def self.run(*cask_names)
    if cask_names.empty?
      odebug "Opening project homepage"
      system "/usr/bin/open", '--', 'http://caskroom.io/'
    else
      cask_names.each do |cask_name|
        odebug "Opening homepage for Cask #{cask_name}"
        cask = Cask.load(cask_name)
        system "/usr/bin/open", '--', cask.homepage
      end
    end
  end

  def self.help
    "opens the homepage of the Cask of the given name"
  end
end
