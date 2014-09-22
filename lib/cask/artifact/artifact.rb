class Cask::Artifact::Artifact < Cask::Artifact::Symlinked
  def self.link_type_english_name
    'Generic artifact'
  end

  # todo remove this backward compatibility override
  def self.artifact_dsl_key
    :link
  end

  # todo remove this backward compatibility override
  def self.artifact_dirmethod
    @artifact_dirmethod ||= :appdir
  end

  # todo remove this backward compatibility override
  def summary
    {}
  end
end
