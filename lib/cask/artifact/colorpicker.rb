class Cask::Artifact::Colorpicker < Cask::Artifact::Base
  def self.me?(cask)
    cask.artifacts[:colorpicker].any?
  end

  def install
    @cask.artifacts[:colorpicker].each { |colorpicker| link(colorpicker) }
  end

  def uninstall
    @cask.artifacts[:colorpicker].each { |colorpicker| unlink(colorpicker) }
  end

  def link(colorpicker_relative_path)
    source = @cask.destination_path.join(colorpicker_relative_path)
    target = Cask.colorpickerdir.join(source.basename)

    return unless preflight_checks(source, target)
    ohai "Linking colorpicker #{source.basename} to #{target}"
    @command.run!('/bin/ln', :args => ['-hfs', source, target])
  end

  def preflight_checks(source, target)
    if target.exist? && !target.symlink?
      ohai "It seems there is already a colorpicker at #{target}; not linking."
      false
    end
    unless source.exist?
      raise "it seems the symlink source is not there: #{source}"
    end
    true
  end

  def unlink(colorpicker_relative_path)
    linked_path = Cask.colorpickerdir.join(Pathname(colorpicker_relative_path).basename)
    if linked_path.exist? && linked_path.symlink?
      ohai "Removing colorpicker link: #{linked_path}"
      linked_path.delete
    end
  end
end
