class Cask::Artifact::StageOnly < Cask::Artifact::Base
  def self.artifact_dsl_key
    :stage_only
  end

  def install_phase
    # do nothing
  end

  def uninstall_phase
    # do nothing
  end
end
