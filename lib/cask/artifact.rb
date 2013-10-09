module Cask::Artifact; end

require 'cask/artifact/base'

require 'cask/artifact/app'
require 'cask/artifact/pkg'
require 'cask/artifact/prefpane'

module Cask::Artifact
  def self.artifacts
    [
      Cask::Artifact::App,
      Cask::Artifact::Pkg,
      Cask::Artifact::Prefpane,
    ]
  end

  def self.for_cask(cask)
    artifacts.select { |artifact| artifact.me?(cask) }
  end
end
