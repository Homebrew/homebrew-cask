class Cask::Artifact::Widget < Cask::Artifact::Base
  def self.me?(cask)
    cask.artifacts[:widget].any?
  end

  def install
    @cask.artifacts[:widget].each { |widget| link(widget) }
  end

  def uninstall
    @cask.artifacts[:widget].each { |widget| unlink(widget) }
  end

  def link(widget_relative_path)
    source = @cask.destination_path.join(widget_relative_path)
    target = Cask.widgetdir.join(source.basename)

    return unless preflight_checks(source, target)
    ohai "Linking Widget #{source.basename} to #{target}"
    @command.run!('/bin/ln', :args => ['-hfs', source, target])
  end

  def preflight_checks(source, target)
    if target.directory? && !target.symlink?
      ohai "It seems there is already a Widget at #{target}; not linking."
      false
    end
    unless source.exist?
      raise "it seems the symlink source is not there: #{source}"
    end
    true
  end

  def unlink(widget_relative_path)
    linked_path = Cask.widgetdir.join(Pathname(widget_relative_path).basename)
    if linked_path.exist? && linked_path.symlink?
      ohai "Removing Widget link: #{linked_path}"
      linked_path.delete
    end
  end
end
