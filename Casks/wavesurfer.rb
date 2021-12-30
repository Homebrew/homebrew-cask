cask "wavesurfer" do
  version "1.8.8p6.1"
  sha256 "ef1aacab25f37d595e87e5638cd9ef5b3b2af22a05c6aa06585795915a8ae6ea"

  url "https://downloads.sourceforge.net/wavesurfer/wavesurfer-#{version}-macos.dmg"
  appcast "https://sourceforge.net/projects/wavesurfer/rss"
  name "WaveSurfer"
  homepage "https://sourceforge.net/projects/wavesurfer/"

  app "WaveSurfer.app"
end
