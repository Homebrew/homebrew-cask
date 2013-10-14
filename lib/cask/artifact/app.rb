class Cask::Artifact::App < Cask::Artifact::Base
  def self.me?(cask)
    cask.artifacts[:link].any?
  end

  def install
    @cask.artifacts[:link].each { |app| link(app) }
  end

  def uninstall
    @cask.artifacts[:link].each { |app| unlink(app) }
  end

  def link(app_relative_path)
    source = @cask.destination_path.join(app_relative_path)
    target = Cask.appdir.join(source.basename)

    return unless preflight_checks(source, target)
    ohai "Linking #{source.basename} to #{target}"
    @command.run('/bin/ln', :args => ['-hfs', source, target])
  end

  def preflight_checks(source, target)
    if target.directory? && !target.symlink?
      ohai "It seems there is already an app at #{target}; not linking."
      return false
    end
    unless source.exist?
      raise "it seems the symlink source is not there: #{source}"
    end
    true
  end

  def unlink(app_relative_path)
    linked_path = Cask.appdir.join(Pathname(app_relative_path).basename)
    if linked_path.exist? && linked_path.symlink?
      ohai "Removing link: #{linked_path}"
      linked_path.delete
    end
  end
end
