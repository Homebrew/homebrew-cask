class Cask::Artifact::CaskroomOnly < Cask::Artifact::Base
  def self.artifact_dsl_key
    :caskroom_only
  end

  def install
    # do nothing
  end
end
