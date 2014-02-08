class Cask::CLI::List
  def self.run(*arguments)
    if arguments.any?
      retval = list_files(*arguments)
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

  def self.list_files(*cask_names)
    count = 0
    cask_names.each do |cask_name|
      odebug "Listing files for Cask #{cask_name}"
      cask = Cask.load(cask_name)
      if cask.installed?
        count += 1
        Cask::PrettyListing.new(cask).print
      else
        opoo "#{cask} is not installed"
      end
    end
    count == 0 ? nil : count == cask_names.length
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
