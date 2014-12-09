class Cask::Artifact::Base

  def self.artifact_name
    @artifact_name ||= self.name.sub(%r{^.*:}, '').gsub(%r{(.)([A-Z])}, '\1_\2').downcase
  end

  def self.artifact_english_name
    @artifact_english_name ||= self.name.sub(%r{^.*:}, '').gsub(%r{(.)([A-Z])}, '\1 \2')
  end

  def self.artifact_english_article
    @artifact_english_article ||= self.artifact_english_name.match(%r{^[aeiou]}i) ? 'an' : 'a'
  end

  def self.artifact_dsl_key
    @artifact_dsl_key ||= self.artifact_name.to_sym
  end

  def self.artifact_dirmethod
    @artifact_dirmethod ||= "#{self.artifact_name}dir".to_sym
  end

  def self.me?(cask)
     cask.artifacts[self.artifact_dsl_key].any?
  end

  def zap_phase
    odebug "Nothing to do. The #{self.class.artifact_name} artifact has no zap phase."
  end

  # todo: this sort of logic would make more sense in dsl.rb, or a
  # constructor called from dsl.rb, so long as that isn't slow.
  def self.read_script_arguments(arguments, stanza, default_arguments={}, override_arguments={}, key=nil)
    # todo: when stanza names are harmonized with class names,
    # stanza may not be needed as an explicit argument
    description = stanza.to_s
    if key
      arguments = arguments[key]
      description.concat(" #{key.inspect}")
    end

    # backward-compatible string value
    if arguments.kind_of?(String)
      arguments = { :executable => arguments }
    end

    # key sanity
    permitted_keys = [:args, :input, :executable, :must_succeed, :sudo, :bsexec, :print_stdout, :print_stderr]
    unknown_keys = arguments.keys - permitted_keys
    unless unknown_keys.empty?
      opoo %Q{Unknown arguments to #{description} -- #{unknown_keys.inspect} (ignored). Running "brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup" will likely fix it.}
    end
    arguments.reject! {|k,v| ! permitted_keys.include?(k)}

    # key warnings
    override_keys = override_arguments.keys
    ignored_keys = arguments.keys & override_keys
    unless ignored_keys.empty?
      onoe "Some arguments to #{description} will be ignored -- :#{unknown_keys.inspect} (overridden)."
    end

    # extract executable
    if arguments.key?(:executable)
      executable = arguments.delete(:executable)
    else
      executable = nil
    end

    arguments = default_arguments.merge arguments
    arguments.merge! override_arguments

    return executable, arguments
  end

  def summary
    {}
  end

  def initialize(cask, command=Cask::SystemCommand)
    @cask = cask
    @command = command
  end
end
