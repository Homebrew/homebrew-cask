class Hbc::CLI::List < Hbc::CLI::Base
  def self.run(*arguments)
    @options = {}
    @options[:one] = true if arguments.delete("-1")
    @options[:versions] = true if arguments.delete("--versions")

    if arguments.delete("-l")
      @options[:one] = true
      opoo "Option -l is obsolete! Implying option -1."
    end

    retval = arguments.any? ? list(*arguments) : list_installed
    # retval is ternary: true/false/nil
    if retval.nil? && !arguments.any?
      opoo "nothing to list" # special case: avoid exit code
    elsif retval.nil?
      raise Hbc::CaskError, "nothing to list"
    elsif !retval
      raise Hbc::CaskError, "listing incomplete"
    end
  end

  def self.list(*cask_tokens)
    count = 0

    cask_tokens.each do |cask_token|
      odebug "Listing files for Cask #{cask_token}"
      begin
        cask = Hbc.load(cask_token)

        if cask.installed?
          if @options[:one]
            puts cask.token
          elsif @options[:versions]
            puts format_versioned(cask)
          else
            installed_caskfile = cask.metadata_master_container_path.join(*cask.timestamped_versions.last, "Casks", "#{cask_token}.rb")
            cask = Hbc.load(installed_caskfile)
            list_artifacts(cask)
          end

          count += 1
        else
          opoo "#{cask} is not installed"
        end
      rescue Hbc::CaskUnavailableError => e
        onoe e
      end
    end

    count == 0 ? nil : count == cask_tokens.length
  end

  def self.list_artifacts(cask)
    Hbc::Artifact.for_cask(cask).each do |artifact|
      summary = artifact.new(cask).summary
      ohai summary[:english_description], summary[:contents] unless summary.empty?
    end
  end

  def self.list_installed
    installed_casks = Hbc.installed

    if @options[:one]
      puts installed_casks.map(&:to_s)
    elsif @options[:versions]
      puts installed_casks.map(&method(:format_versioned))
    else
      puts_columns installed_casks.map(&:to_s)
    end

    installed_casks.empty? ? nil : true
  end

  def self.format_versioned(cask)
    cask.to_s.concat(cask.versions.map(&:to_s).join(" ").prepend(" "))
  end

  def self.help
    "with no args, lists installed Casks; given installed Casks, lists staged files"
  end
end
