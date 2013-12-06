class Cask::Artifact::Block < Cask::Artifact::Base
  def self.me?(cask)
    cask.artifacts[:after_install].any? ||
      cask.artifacts[:after_uninstall].any?
  end

  def install
    @cask.artifacts[:after_install].each { |block| block.call(@cask) }
  end

  def uninstall
    @cask.artifacts[:after_uninstall].each { |block| block.call(@cask) }
  end
end

