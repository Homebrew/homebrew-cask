module Cask::Artifact; end

require 'cask/artifact/base'
require 'cask/artifact/uninstall_base'
require 'cask/artifact/symlinked'
require 'cask/artifact/hardlinked'

require 'cask/artifact/app'
require 'cask/artifact/artifact'        # generic 'artifact' stanza
require 'cask/artifact/binary'
require 'cask/artifact/colorpicker'
require 'cask/artifact/font'
require 'cask/artifact/input_method'
require 'cask/artifact/installer'
require 'cask/artifact/internet_plugin'
require 'cask/artifact/nested_container'
require 'cask/artifact/pkg'
require 'cask/artifact/postflight_block'
require 'cask/artifact/preflight_block'
require 'cask/artifact/prefpane'
require 'cask/artifact/qlplugin'
require 'cask/artifact/screen_saver'
require 'cask/artifact/service'
require 'cask/artifact/stage_only'
require 'cask/artifact/suite'
require 'cask/artifact/uninstall'
require 'cask/artifact/widget'
require 'cask/artifact/zap'

module Cask::Artifact
  #
  # NOTE: order is important here, since we want to extract nested containers
  #       before we handle any other artifacts
  #
  def self.artifacts
    [
      Cask::Artifact::PreflightBlock,
      Cask::Artifact::NestedContainer,
      Cask::Artifact::Installer,
      Cask::Artifact::App,
      Cask::Artifact::Suite,
      Cask::Artifact::Artifact,         # generic 'artifact' stanza
      Cask::Artifact::Colorpicker,
      Cask::Artifact::Pkg,
      Cask::Artifact::Prefpane,
      Cask::Artifact::Qlplugin,
      Cask::Artifact::Font,
      Cask::Artifact::Widget,
      Cask::Artifact::Service,
      Cask::Artifact::StageOnly,
      Cask::Artifact::Binary,
      Cask::Artifact::InputMethod,
      Cask::Artifact::InternetPlugin,
      Cask::Artifact::ScreenSaver,
      Cask::Artifact::Uninstall,
      Cask::Artifact::PostflightBlock,
      Cask::Artifact::Zap,
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
