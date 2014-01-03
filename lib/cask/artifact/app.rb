class Cask::Artifact::App < Cask::Artifact::Symlinked
  def self.artifact_dsl_key
    :link
  end
end
