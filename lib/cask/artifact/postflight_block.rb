class Cask::Artifact::PostflightBlock < Cask::Artifact::Base
  def self.me?(cask)
    cask.artifacts[:postflight].any? ||
      cask.artifacts[:uninstall_postflight].any?
  end

  def install_phase
    @cask.artifacts[:postflight].each do |block|
      Cask::DSL::Postflight.new(@cask).instance_eval &block
    end
  end

  def uninstall_phase
    @cask.artifacts[:uninstall_postflight].each do |block|
      Cask::DSL::UninstallPostflight.new(@cask).instance_eval &block
    end
  end
end
