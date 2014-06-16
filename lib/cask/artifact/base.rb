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

  def self.read_script_arguments(uninstall_options, key)
    script_arguments = uninstall_options[key]

    # backwards-compatible string value
    if script_arguments.kind_of?(String)
      script_arguments = { :executable => script_arguments }
    end

    # key sanity
    permitted_keys = [:args, :input, :executable, :must_succeed]
    unknown_keys = script_arguments.keys - permitted_keys
    unless unknown_keys.empty?
      opoo "Unknown arguments to uninstall :#{key} -- :#{unknown_keys.join(", :")} (ignored). Running `brew update; brew upgrade brew-cask` will likely fix it.'"
    end
    script_arguments.reject! {|k,v| ! permitted_keys.include?(k)}

    # extract executable
    if script_arguments.key?(:executable)
      executable = script_arguments.delete(:executable)
    else
      executable = nil
    end

    unless script_arguments.key?(:must_succeed)
      script_arguments[:must_succeed] = true
    end

    script_arguments.merge!(:sudo => true, :print => true)
    return executable, script_arguments
  end

  def summary
    {}
  end

  def initialize(cask, command=Cask::SystemCommand)
    @cask = cask
    @command = command
  end
end
