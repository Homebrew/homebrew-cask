class Hbc::Artifact::App < Hbc::Artifact::Symlinked
  def self.inner_link(path)
    path.join('Contents')
  end
end
