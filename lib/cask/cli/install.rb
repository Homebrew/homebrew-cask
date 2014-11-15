class Cask::CLI::Install < Cask::CLI::Base
  def self.run(*args)
    cask_names = cask_names_from(args)
    raise CaskUnspecifiedError if cask_names.empty?
    force = args.include? '--force'
    retval = install_casks cask_names, force
    # retval is ternary: true/false/nil
    if retval.nil?
      raise CaskError.new("nothing to install")
    elsif ! retval
      raise CaskError.new("install incomplete")
    end
  end

  def self.install_casks(cask_names, force)
    count = 0
    cask_names.each do |cask_name|
      begin
        cask = Cask.load(cask_name)
        Cask::Installer.new(cask).install(force)
        count += 1
       rescue CaskAlreadyInstalledError => e
         opoo e.message
         count += 1
      rescue CaskUnavailableError => e
        warn_unavailable_with_suggestion cask_name, e
      end
    end
    count == 0 ? nil : count == cask_names.length
  end

  def self.warn_unavailable_with_suggestion(cask_name, e)
    exact_match, partial_matches, search_term = Cask::CLI::Search.search(cask_name)
    errmsg = e.message
    if exact_match
      errmsg.concat(". Did you mean:\n#{exact_match}")
    elsif !partial_matches.empty?
      errmsg.concat(". Did you mean one of:\n#{Cask::Utils.stringify_columns(partial_matches.take(20))}\n")
    end
    onoe errmsg
  end

  def self.help
    "installs the Cask of the given name"
  end
end
