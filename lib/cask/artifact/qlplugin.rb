class Cask::Artifact::Qlplugin < Cask::Artifact::Base
  def self.me?(cask)
    cask.artifacts[:qlplugin].any?
  end

  def install
    @cask.artifacts[:qlplugin].each { |qlplugin| link(qlplugin) }
  end

  def uninstall
    @cask.artifacts[:qlplugin].each { |qlplugin| unlink(qlplugin) }
  end

  def link(qlplugin_relative_path)
    source = @cask.destination_path.join(qlplugin_relative_path)
    target = Cask.qlplugindir.join(source.basename)

    return unless preflight_checks(source, target)
    ohai "Linking QuickLook plugin #{source.basename} to #{target}"
    @command.run!('/bin/ln', :args => ['-hfs', source, target])
  end

  def preflight_checks(source, target)
    if target.directory? && !target.symlink?
      ohai "It seems there is already a QuickLook plugin at #{target}; not linking."
      false
    end
    unless source.exist?
      raise "it seems the symlink source is not there: #{source}"
    end
    true
  end

  def unlink(qlplugin_relative_path)
    linked_path = Cask.qlplugindir.join(Pathname(qlplugin_relative_path).basename)
    if linked_path.exist? && linked_path.symlink?
      ohai "Removing QuickLook plugin link: #{linked_path}"
      linked_path.delete
    end
  end
end
