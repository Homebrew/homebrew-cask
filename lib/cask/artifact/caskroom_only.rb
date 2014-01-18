class Cask::Artifact::CaskroomOnly < Cask::Artifact::Pkg
  def self.artifact_dsl_key
    :caskroom_only
  end

  def install
    # do nothing
  end
end
