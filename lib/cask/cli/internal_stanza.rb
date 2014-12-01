class Cask::CLI::InternalStanza < Cask::CLI::InternalUseBase

  # Syntax
  #
  #     brew cask _stanza <stanza_name> [ --table | --yaml | --inspect | --quiet ] [ <cask_token> ... ]
  #
  # If no tokens are given, then data for all Casks is returned.
  #
  # The pseudo-stanzas "artifacts" and "sums" are available.
  #
  # On failure, a blank line is returned on the standard output.
  #
  # Examples
  #
  #     brew cask _stanza appcast   --table
  #     brew cask _stanza app       --table alfred google-chrome adium voicemac logisim vagrant
  #     brew cask _stanza url       --table alfred google-chrome adium voicemac logisim vagrant
  #     brew cask _stanza version   --table alfred google-chrome adium voicemac logisim vagrant
  #     brew cask _stanza artifacts --table --inspect alfred google-chrome adium voicemac logisim vagrant
  #     brew cask _stanza artifacts --table --yaml    alfred google-chrome adium voicemac logisim vagrant
  #

  # todo: this should be retrievable from Cask::DSL
  ARTIFACTS = Set.new([
                       :app,
                       :suite,
                       :artifact,
                       :prefpane,
                       :qlplugin,
                       :font,
                       :widget,
                       :service,
                       :colorpicker,
                       :binary,
                       :input_method,
                       :internet_plugin,
                       :screen_saver,
                       :pkg,
                       :stage_only,
                       :nested_container,
                       :uninstall,
                       :postflight,
                       :uninstall_postflight,
                       :preflight,
                       :uninstall_postflight,
                       ])

  def self.run(*arguments)

    table = arguments.include? '--table'
    quiet = arguments.include? '--quiet'
    format = :to_yaml if arguments.include? '--yaml'
    format = :inspect if arguments.include? '--inspect'
    cask_tokens = arguments.reject { |arg| arg.chars.first == '-' }
    stanza = cask_tokens.shift.to_sym
    cask_tokens = Cask.all_tokens if cask_tokens.empty?

    retval = print_stanzas(stanza, format, table, quiet, *cask_tokens)

    # retval is ternary: true/false/nil
    if retval.nil?
      exit 1 if quiet
      raise CaskError.new("nothing to print")
    elsif ! retval
      exit 1 if quiet
      raise CaskError.new("print incomplete")
    end
  end

  def self.print_stanzas(stanza, format=nil, table=nil, quiet=nil, *cask_tokens)
    count = 0
    stanza = :sums if stanza == :sha256
    if ARTIFACTS.include?(stanza)
      artifact_name = stanza
      stanza = :artifacts
    end

    cask_tokens.each do |cask_token|

      print "#{cask_token}\t" if table

      begin
        cask = Cask.load(cask_token)
      rescue StandardError
        opoo "Cask '#{cask_token}' was not found" unless quiet
        puts ''
        next
      end

      unless cask.respond_to?(stanza)
        opoo "no such stanza '#{stanza}' on Cask '#{cask_token}'" unless quiet
        puts ''
        next
      end

      begin
        value = cask.send(stanza)
      rescue StandardError
        opoo "failure calling '#{stanza}' on Cask '#{cask_token}'" unless quiet
        puts ''
        next
      end

      if artifact_name and not value.key?(artifact_name)
        opoo "no such stanza '#{artifact_name}' on Cask '#{cask_token}'" unless quiet
        puts ''
        next
      end

      if artifact_name
        value = value.fetch(artifact_name).to_a.flatten
      end

      if format
        puts value.send(format)
      else
        if artifact_name or value.is_a?(Symbol)
          puts value.inspect
        elsif stanza == :sums
          # hack. why does "to_s" equal "inspect" for checksum objects?
          puts value
        else
          puts value.to_s
        end
      end

      count += 1

    end
    count == 0 ? nil : count == cask_tokens.length
  end

  def self.help
    "Extract and render a specific stanza for the given Casks"
  end
end
