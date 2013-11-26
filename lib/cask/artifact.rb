module Cask::Artifact; end

require 'cask/artifact/base'

require 'cask/artifact/app'
require 'cask/artifact/nested_container'
require 'cask/artifact/pkg'
require 'cask/artifact/prefpane'
require 'cask/artifact/qlplugin'
require 'cask/artifact/font'

module Cask::Artifact
  #
  # NOTE: order is important here, since we want to extract nested containers
  #       before we handle any other artifacts
  #
  def self.artifacts
    [
      Cask::Artifact::NestedContainer,
      Cask::Artifact::App,
      Cask::Artifact::Pkg,
      Cask::Artifact::Prefpane,
      Cask::Artifact::Qlplugin,
      Cask::Artifact::Font,
    ]
  end

  def self.for_cask(cask)
    artifacts.select { |artifact| artifact.me?(cask) }
  end
end
