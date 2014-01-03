class Cask::Artifact::Symlinked < Cask::Artifact::Base
  def link(artifact_relative_path)
    source = @cask.destination_path.join(artifact_relative_path)
    target = Cask.send(self.class.artifact_dirmethod).join(source.basename)
    return unless preflight_checks(source, target)
    ohai "Linking #{self.class.artifact_english_name} '#{source.basename}' to '#{target}'"
    @command.run!('/bin/ln', :args => ['-hfs', source, target])
  end

  def unlink(artifact_relative_path)
    linked_path = Cask.send(self.class.artifact_dirmethod).join(Pathname(artifact_relative_path).basename)
    if linked_path.exist? && linked_path.symlink?
      ohai "Removing #{self.class.artifact_english_name} link: '#{linked_path}'"
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
    if target.exist? && !target.symlink?
      ohai "It seems there is already #{self.class.artifact_english_article} #{self.class.artifact_english_name} at '#{target}'; not linking."
      return false
    end
    unless source.exist?
      raise "it seems the symlink source is not there: '#{source}'"
    end
    true
  end
end
