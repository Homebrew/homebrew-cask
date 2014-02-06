module Cask::Artifact; end

require 'cask/artifact/base'
require 'cask/artifact/symlinked'
require 'cask/artifact/hardlinked'

require 'cask/artifact/app'
require 'cask/artifact/binary'
require 'cask/artifact/after_block'
require 'cask/artifact/colorpicker'
require 'cask/artifact/font'
require 'cask/artifact/nested_container'
require 'cask/artifact/pkg'
require 'cask/artifact/prefpane'
require 'cask/artifact/qlplugin'
require 'cask/artifact/widget'
require 'cask/artifact/service'
require 'cask/artifact/caskroom_only'
require 'cask/artifact/input_method'
require 'cask/artifact/screen_saver'


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
      Cask::Artifact::CaskroomOnly,
      Cask::Artifact::Binary,
      Cask::Artifact::InputMethod,
      Cask::Artifact::ScreenSaver,
      Cask::Artifact::AfterBlock,
    ]
  end

  def self.for_cask(cask)
    odebug "Determining which artifacts are present in Cask #{cask}"
    artifacts.select do |artifact|
      odebug "Checking for artifact class #{artifact}"
      artifact.me?(cask)
    end
  end
end
