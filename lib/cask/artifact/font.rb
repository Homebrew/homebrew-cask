class Cask::Artifact::Font < Cask::Artifact::Base
  def self.me?(cask)
    cask.artifacts[:font].any?
  end

  def install
    @cask.artifacts[:font].each { |font| link(font) }
  end

  def uninstall
    @cask.artifacts[:font].each { |font| unlink(font) }
  end

  def link(font_relative_path)
    source = @cask.destination_path.join(font_relative_path)
    target = Cask.fontdir.join(source.basename)

    return unless preflight_checks(source, target)
    ohai "Linking font #{source.basename} to #{target}"
    @command.run!('/bin/ln', :args => ['-hfs', source, target])
  end

  def preflight_checks(source, target)
    if target.exist? && !target.symlink?
      ohai "It seems there is already a font at #{target}; not linking."
      false
    end
    unless source.exist?
      raise "it seems the symlink source is not there: #{source}"
    end
    true
  end

  def unlink(font_relative_path)
    linked_path = Cask.fontdir.join(Pathname(font_relative_path).basename)
    if linked_path.exist? && linked_path.symlink?
      ohai "Removing font link: #{linked_path}"
      linked_path.delete
    end
  end
end
