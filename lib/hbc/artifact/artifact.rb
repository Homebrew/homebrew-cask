class Hbc::Artifact::Artifact < Hbc::Artifact::Symlinked
  def self.artifact_english_name
    'Generic artifact'
  end

  def self.artifact_dirmethod
    :appdir
  end
end
