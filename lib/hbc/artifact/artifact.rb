class Hbc::Artifact::Artifact < Hbc::Artifact::Symlinked
  def self.artifact_english_name
    'Generic artifact'
  end

  def self.artifact_dirmethod
    :appdir
  end

  def load_specification(artifact_spec)
    source_string, target_hash = artifact_spec
    raise Hbc::CaskInvalidError.new(@cask.token, 'no source given for artifact') if source_string.nil?
    @source = @cask.staged_path.join(source_string)
    raise Hbc::CaskInvalidError.new(@cask.token, "target required for generic artifact #{source_string}") unless target_hash.is_a?(Hash)
    target_hash.assert_valid_keys(:target)
    @target = Pathname.new(target_hash[:target])
  end
end
