module Cask::Artifact; end

require 'cask/artifact/base'

require 'cask/artifact/app'
require 'cask/artifact/block'
require 'cask/artifact/colorpicker'
require 'cask/artifact/font'
require 'cask/artifact/nested_container'
require 'cask/artifact/pkg'
require 'cask/artifact/prefpane'
require 'cask/artifact/qlplugin'
require 'cask/artifact/widget'
require 'cask/artifact/service'


module Cask::Artifact
  #
  # NOTE: order is important here, since we want to extract nested containers
  #       before we handle any other artifacts
  #
  def self.artifacts
    [
      Cask::Artifact::NestedContainer,
      Cask::Artifact::App,
      Cask::Artifact::Colorpicker,
      Cask::Artifact::Pkg,
      Cask::Artifact::Prefpane,
      Cask::Artifact::Qlplugin,
      Cask::Artifact::Font,
      Cask::Artifact::Widget,
      Cask::Artifact::Service,
      Cask::Artifact::Block,
    ]
  end

  def self.for_cask(cask)
    artifacts.select { |artifact| artifact.me?(cask) }
  end
end
