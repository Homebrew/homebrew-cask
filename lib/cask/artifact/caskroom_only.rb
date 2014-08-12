class Cask::Artifact::CaskroomOnly < Cask::Artifact::Base
  def self.artifact_dsl_key
    :caskroom_only
  end

  def install_phase
    # do nothing
  end

  def uninstall_phase
    # do nothing
  end
end
