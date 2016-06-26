class Hbc::CLI::Install < Hbc::CLI::Base
  def self.run(*args)
    cask_tokens = cask_tokens_from(args)
    raise Hbc::CaskUnspecifiedError if cask_tokens.empty?
    force = args.include? '--force'
    skip_cask_deps = args.include? '--skip-cask-deps'
    retval = install_casks cask_tokens, force, skip_cask_deps
    # retval is ternary: true/false/nil
    if retval.nil?
      raise Hbc::CaskError.new("nothing to install")
    elsif !retval
      raise Hbc::CaskError.new("install incomplete")
    end
  end

  def self.install_casks(cask_tokens, force, skip_cask_deps)
    count = 0
    cask_tokens.each do |cask_token|
      begin
        cask = Hbc.load(cask_token)
        Hbc::Installer.new(cask, force: force, skip_cask_deps: skip_cask_deps).install
        count += 1
       rescue Hbc::CaskAlreadyInstalledError => e
         opoo e.message
         count += 1
       rescue Hbc::CaskAutoUpdatesError => e
         opoo e.message
         count += 1
      rescue Hbc::CaskUnavailableError => e
        warn_unavailable_with_suggestion cask_token, e
      rescue Hbc::CaskNoShasumError => e
        opoo e.message
        count += 1
      end
    end
    count == 0 ? nil : count == cask_tokens.length
  end

  def self.warn_unavailable_with_suggestion(cask_token, e)
    exact_match, partial_matches, search_term = Hbc::CLI::Search.search(cask_token)
    errmsg = e.message
    if exact_match
      errmsg.concat(". Did you mean:\n#{exact_match}")
    elsif !partial_matches.empty?
      errmsg.concat(". Did you mean one of:\n#{Hbc::Utils.stringify_columns(partial_matches.take(20))}\n")
    end
    onoe errmsg
  end

  def self.help
    "installs the given Cask"
  end

  def self.needs_init?
    true
  end
end
