cask "wavesurfer" do
  version "1.8.8p6.1"
  sha256 "ef1aacab25f37d595e87e5638cd9ef5b3b2af22a05c6aa06585795915a8ae6ea"

  url "https://downloads.sourceforge.net/wavesurfer/wavesurfer-#{version}-macos.dmg"
  name "WaveSurfer"
  desc "Tool for sound visualization and manipulation"
  homepage "https://sourceforge.net/projects/wavesurfer/"

  livecheck do
    url "https://sourceforge.net/projects/wavesurfer/rss?path=/wavesurfer"
    regex(%r{url=.*?/wavesurfer[._-]v?(\d+(?:\.\d+)+(?:p\d+(?:\.\d+)*)?)[^"' ]*?\.dmg}i)
  end

  app "WaveSurfer.app"

  caveats do
    requires_rosetta
  end
end
