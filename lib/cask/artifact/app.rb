class Cask::Artifact::App < Cask::Artifact::Symlinked
  # todo remove this backward compatibility override
  def self.artifact_dsl_key
    :link
  end
end
