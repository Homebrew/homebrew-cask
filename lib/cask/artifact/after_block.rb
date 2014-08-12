class Cask::Artifact::AfterBlock < Cask::Artifact::Base
  def self.me?(cask)
    cask.artifacts[:after_install].any? ||
      cask.artifacts[:after_uninstall].any?
  end

  def install_phase
    @cask.artifacts[:after_install].each do |block|
      Cask::Decorator.new(Cask::DSL::AfterInstall, @cask).instance_eval &block
    end
  end

  def uninstall_phase
    @cask.artifacts[:after_uninstall].each do |block|
      Cask::Decorator.new(Cask::DSL::AfterUninstall, @cask).instance_eval &block
    end
  end
end
