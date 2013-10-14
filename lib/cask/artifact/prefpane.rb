class Cask::Artifact::Prefpane < Cask::Artifact::Base
  def self.me?(cask)
    cask.artifacts[:prefpane].any?
  end

  def install
    @cask.artifacts[:prefpane].each { |prefpane| link(prefpane) }
  end

  def uninstall
    @cask.artifacts[:prefpane].each { |prefpane| unlink(prefpane) }
  end

  def link(prefpane_relative_path)
    source = @cask.destination_path.join(prefpane_relative_path)
    target = Cask.prefpanedir.join(source.basename)

    return unless preflight_checks(source, target)
    ohai "Linking prefPane #{source.basename} to #{target}"
    @command.run('/bin/ln', :args => ['-hfs', source, target])
  end

  def preflight_checks(source, target)
    if target.directory? && !target.symlink?
      ohai "It seems there is already an prefpane at #{target}; not linking."
      false
    end
    unless source.exist?
      raise "it seems the symlink source is not there: #{source}"
    end
    true
  end

  def unlink(prefpane_relative_path)
    linked_path = Cask.prefpanedir.join(Pathname(prefpane_relative_path).basename)
    if linked_path.exist? && linked_path.symlink?
      ohai "Removing prefPane link: #{linked_path}"
      linked_path.delete
    end
  end
end
