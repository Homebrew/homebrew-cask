class Cask::Artifact::Binary < Cask::Artifact::Symlinked
  def install
    super unless Cask.no_binaries
  end
end
