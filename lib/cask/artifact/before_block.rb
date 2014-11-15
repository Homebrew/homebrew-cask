class Cask::Artifact::BeforeBlock < Cask::Artifact::Base
  def self.me?(cask)
    cask.artifacts[:preflight].any? ||
      cask.artifacts[:uninstall_preflight].any?
  end

  def install_phase
    @cask.artifacts[:preflight].each do |block|
      Cask::DSL::BeforeInstall.new(@cask).instance_eval &block
    end
  end

  def uninstall_phase
    @cask.artifacts[:uninstall_preflight].each do |block|
      Cask::DSL::BeforeUninstall.new(@cask).instance_eval &block
    end
  end
end
