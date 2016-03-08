module Hbc::Artifact; end

require 'hbc/artifact/base'
require 'hbc/artifact/uninstall_base'
require 'hbc/artifact/symlinked'
require 'hbc/artifact/hardlinked'

require 'hbc/artifact/app'
require 'hbc/artifact/artifact'        # generic 'artifact' stanza
require 'hbc/artifact/binary'
require 'hbc/artifact/colorpicker'
require 'hbc/artifact/font'
require 'hbc/artifact/input_method'
require 'hbc/artifact/installer'
require 'hbc/artifact/internet_plugin'
require 'hbc/artifact/audio_unit_plugin'
require 'hbc/artifact/vst_plugin'
require 'hbc/artifact/nested_container'
require 'hbc/artifact/pkg'
require 'hbc/artifact/postflight_block'
require 'hbc/artifact/preflight_block'
require 'hbc/artifact/prefpane'
require 'hbc/artifact/qlplugin'
require 'hbc/artifact/screen_saver'
require 'hbc/artifact/service'
require 'hbc/artifact/stage_only'
require 'hbc/artifact/suite'
require 'hbc/artifact/uninstall'
require 'hbc/artifact/zap'

module Hbc::Artifact
  #
  # NOTE: order is important here, since we want to extract nested containers
  #       before we handle any other artifacts
  #
  def self.artifacts
    [
      Hbc::Artifact::PreflightBlock,
      Hbc::Artifact::NestedContainer,
      Hbc::Artifact::Installer,
      Hbc::Artifact::App,
      Hbc::Artifact::Suite,
      Hbc::Artifact::Artifact,         # generic 'artifact' stanza
      Hbc::Artifact::Colorpicker,
      Hbc::Artifact::Pkg,
      Hbc::Artifact::Prefpane,
      Hbc::Artifact::Qlplugin,
      Hbc::Artifact::Font,
      Hbc::Artifact::Service,
      Hbc::Artifact::StageOnly,
      Hbc::Artifact::Binary,
      Hbc::Artifact::InputMethod,
      Hbc::Artifact::InternetPlugin,
      Hbc::Artifact::AudioUnitPlugin,
      Hbc::Artifact::VstPlugin,
      Hbc::Artifact::ScreenSaver,
      Hbc::Artifact::Uninstall,
      Hbc::Artifact::PostflightBlock,
      Hbc::Artifact::Zap,
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
