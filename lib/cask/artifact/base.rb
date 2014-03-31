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

  def summary
    {}
  end

  def initialize(cask, command=Cask::SystemCommand)
    @cask = cask
    @command = command
  end
end
