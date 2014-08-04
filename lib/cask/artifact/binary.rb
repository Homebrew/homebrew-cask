class Cask::Artifact::Binary < Cask::Artifact::Symlinked
  def install_phase
    super unless Cask.no_binaries
  end
end
