class Cask::CLI::List
  def self.run(*arguments)
    if arguments.any?
      list_casks(*arguments)
    else
      list_installed
    end
  end

  def self.list_casks(*cask_names)
    count = 0
    cask_names.each do |cask_name|
      odebug "Listing files for Cask #{cask_name}"
      cask = Cask.load(cask_name)
      if cask.installed?
        count += 1
        list_artifacts(cask)
        list_files(cask)
      else
        opoo "#{cask} is not installed"
      end
    end
    if count != cask_names.length
      raise CaskError.new("Listing incomplete")
    end
  end

  def self.list_artifacts(cask)
    artifacts = Cask::Artifact.for_cask(cask)
    artifacts.each do |artifact|
      summary = artifact.new(cask).summary
      ohai summary[:english_description], summary[:contents] unless summary.empty?
    end
  end

  def self.list_files(cask)
    ohai "Raw contents of Cask directory:"
    Cask::PrettyListing.new(cask).print
  end

  def self.list_installed
    puts_columns Cask.installed.map(&:to_s)
  end

  def self.help
    "with no args, lists installed casks; given installed casks, lists installed files"
  end
end
