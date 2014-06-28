class Cask::Artifact::BeforeBlock < Cask::Artifact::Base
  def self.me?(cask)
    cask.artifacts[:before_install].any? ||
      cask.artifacts[:before_uninstall].any?
  end

  def install_phase
    @cask.artifacts[:before_install].each { |block| @cask.instance_eval &block }
  end

  def uninstall_phase
    @cask.artifacts[:before_uninstall].each { |block| @cask.instance_eval &block }
  end
end
