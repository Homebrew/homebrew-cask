class Cask::CLI::Reinstall
  def self.run(*args)
    raise CaskUnspecifiedError if args.empty?
    cask_names = args.reject { |a| a.chars.first == '-' }
    force = args.include? '--force'
    cask_names.each do |cask_name|
      odebug "Reinstalling Cask #{cask_name}"
      cask = Cask.load(cask_name)
      begin
        if cask
          Cask::Installer.new(cask).uninstall
        end
        Cask::Installer.new(cask).install(force)
      rescue CaskUnavailableError => e
        exact_match, partial_matches, search_term = Cask::CLI::Search.search(cask_name)
        errmsg = "#{cask_name}"
        if exact_match
          errmsg.concat(". Did you mean:\n#{exact_match}")
        elsif !partial_matches.empty?
          errmsg.concat(". Did you mean one of:\n#{stringify_columns(partial_matches.take(20))}\n")
        end
        raise CaskUnavailableError.new(errmsg)
      end
    end
  end

  def self.help
    "reinstalls the cask of the given name"
  end
end
