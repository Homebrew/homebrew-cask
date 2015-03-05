class Hbc::Artifact::Binary < Hbc::Artifact::Symlinked
  def install_phase
    super unless Hbc.no_binaries
  end
end
