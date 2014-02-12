class Cask::CLI::List
  def self.run(*arguments)
    if arguments.any?
      retval = list_casks(*arguments)
    else
      retval = list_installed
    end
    # retval is ternary: true/false/nil
    if retval.nil?
      raise CaskError.new("nothing to list")
    elsif ! retval
      raise CaskError.new("listing incomplete")
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
    count == 0 ? nil : count == cask_names.length
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
    columns = Cask.installed.map(&:to_s)
    puts_columns columns
    columns.empty? ? nil : Cask.installed.length == columns.length
  end

  def self.help
    "with no args, lists installed casks; given installed casks, lists installed files"
  end
end
