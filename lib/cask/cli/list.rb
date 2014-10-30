class Cask::CLI::List < Cask::CLI::Base
  def self.run(*arguments)
    @options = Hash.new
    @options[:one] = true if arguments.delete('-1')
    @options[:long] = true if arguments.delete('-l')

    if arguments.any?
      retval = list_casks(*arguments)
    else
      retval = list_installed
    end
    # retval is ternary: true/false/nil
    if retval.nil? and not arguments.any?
      opoo "nothing to list"  # special case: avoid exit code
    elsif retval.nil?
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
    installed_casks = Cask.installed
    columns = installed_casks.map(&:to_s)
    if @options[:one]
      puts columns
    elsif @options[:long]
      puts Cask::SystemCommand.run!("/bin/ls", :args => ["-l", Cask.caskroom]).stdout
    else
      puts_columns columns
    end
    columns.empty? ? nil : installed_casks.length == columns.length
  end

  def self.help
    "with no args, lists installed Casks; given installed Casks, lists staged files"
  end
end
