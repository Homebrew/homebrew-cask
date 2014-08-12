class Cask::Artifact::Qlplugin < Cask::Artifact::Symlinked
  def self.artifact_english_name
    'QuickLook Plugin'
  end

  def install_phase
    super
    @command.run!('/usr/bin/qlmanage', :args => ['-r'])
  end
end
