class Cask::CLI::Install < Cask::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise CaskUnspecifiedError if cask_tokens.empty?
    force = args.include? '--force'
    retval = install_casks cask_tokens, force
    # retval is ternary: true/false/nil
    if retval.nil?
      raise CaskError.new("nothing to install")
    elsif ! retval
      raise CaskError.new("install incomplete")
    end
  end

  def self.install_casks(cask_tokens, force)
    count = 0
    cask_tokens.each do |cask_token|
      begin
        cask = Cask.load(cask_token)
        Cask::Installer.new(cask).install(force)
        count += 1
       rescue CaskAlreadyInstalledError => e
         opoo e.message
         count += 1
      rescue CaskUnavailableError => e
        warn_unavailable_with_suggestion cask_token, e
      end
    end
    count == 0 ? nil : count == cask_tokens.length
  end

  def self.warn_unavailable_with_suggestion(cask_token, e)
    exact_match, partial_matches, search_term = Cask::CLI::Search.search(cask_token)
    errmsg = e.message
    if exact_match
      errmsg.concat(". Did you mean:\n#{exact_match}")
    elsif !partial_matches.empty?
      errmsg.concat(". Did you mean one of:\n#{Cask::Utils.stringify_columns(partial_matches.take(20))}\n")
    end
    onoe errmsg
  end

  def self.help
    "installs the given Cask"
  end
end
