class Hbc::Artifact::Suite < Hbc::Artifact::Symlinked
  def self.artifact_english_name
    'App Suite'
  end

  def self.artifact_dirmethod
    :appdir
  end
end
