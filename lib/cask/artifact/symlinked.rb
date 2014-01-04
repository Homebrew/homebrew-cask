class Cask::Artifact::Symlinked < Cask::Artifact::Base
  def self.islink?(path)
    path.symlink?
  end

  def self.link_type_english_name
    'Symlink'
  end

  def create_filesystem_link(source, target)
    @command.run!('/bin/ln', :args => ['-hfs', source, target])
  end

  def link(artifact_relative_path)
    source = @cask.destination_path.join(artifact_relative_path)
    target = Cask.send(self.class.artifact_dirmethod).join(source.basename)
    return unless preflight_checks(source, target)
    ohai "#{self.class.link_type_english_name}ing #{self.class.artifact_english_name} '#{source.basename}' to '#{target}'"
    create_filesystem_link(source, target)
  end

  def unlink(artifact_relative_path)
    linked_path = Cask.send(self.class.artifact_dirmethod).join(Pathname(artifact_relative_path).basename)
    if linked_path.exist? && self.class.islink?(linked_path)
      ohai "Removing #{self.class.artifact_english_name} #{self.class.link_type_english_name.downcase}: '#{linked_path}'"
      linked_path.delete
    end
  end

  def install
    @cask.artifacts[self.class.artifact_dsl_key].each { |artifact| link(artifact) }
  end

  def uninstall
    @cask.artifacts[self.class.artifact_dsl_key].each { |artifact| unlink(artifact) }
  end

  def preflight_checks(source, target)
    if target.exist? && !self.class.islink?(target)
      ohai "It seems there is already #{self.class.artifact_english_article} #{self.class.artifact_english_name} at '#{target}'; not linking."
      return false
    end
    unless source.exist?
      raise "it seems the #{self.class.link_type_english_name.downcase} source is not there: '#{source}'"
    end
    true
  end
end
