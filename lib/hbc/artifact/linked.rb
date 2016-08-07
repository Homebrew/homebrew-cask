require "hbc/artifact/relocated"

class Hbc::Artifact::Linked < Hbc::Artifact::Relocated
  def summary
    {
      english_description: "#{self.class.artifact_english_name} #{self.class.link_type_english_name}s managed by brew-cask:",
      contents:            @cask.artifacts[self.class.artifact_dsl_key].map(&method(:summarize_one_link)) - [nil],
    }
  end

  def link(artifact_spec)
    load_specification artifact_spec
    return unless preflight_checks(source, target)
    ohai "#{self.class.link_type_english_name}ing #{self.class.artifact_english_name} '#{source.basename}' to '#{target}'"
    create_filesystem_link(source, target)
  end

  def unlink(artifact_spec)
    load_specification artifact_spec
    return unless self.class.islink?(target)
    ohai "Removing #{self.class.artifact_english_name} #{self.class.link_type_english_name.downcase}: '#{target}'"
    target.delete
  end

  def install_phase
    @cask.artifacts[self.class.artifact_dsl_key].each { |artifact| link(artifact) }
  end

  def uninstall_phase
    @cask.artifacts[self.class.artifact_dsl_key].each { |artifact| unlink(artifact) }
  end

  def preflight_checks(source, target)
    if target.exist? && !self.class.islink?(target)
      ohai "It seems there is already #{self.class.artifact_english_article} #{self.class.artifact_english_name} at '#{target}'; not linking."
      return false
    end
    unless source.exist?
      raise Hbc::CaskError, "It seems the #{self.class.link_type_english_name.downcase} source is not there: '#{source}'"
    end
    true
  end
end
