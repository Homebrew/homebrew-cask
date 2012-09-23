class Cask::CLI::Search
  def self.run(*arguments)
    search_term, *rest = *arguments
    casks = {}
    Cask.all.grep(/#{search_term}/).each { |c|
      repo, name = c.split "/"
      casks[name] ||= []
      casks[name].push repo
    }
    list = []
    casks.each { |name,repos|
      if repos.length == 1
        list.push name
      else
        repos.each { |r| list.push [r,name].join "/" }
      end
    }
    puts list.join "\n"
  end

  def self.help
    "searches all known casks"
  end
end
