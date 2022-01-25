cask "vmpk" do
  version "0.8.4"
  sha256 "cbc0e4d821aa2277efe65b2caf6d8f631ac9289f802df24bbf44e4b0c153095e"

  url "https://downloads.sourceforge.net/vmpk/#{version.major_minor_patch}/vmpk-#{version}-mac-x64.dmg",
      verified: "downloads.sourceforge.net/vmpk/"
  name "VMPK"
  desc "Virtual MIDI Piano Keyboard"
  homepage "https://vmpk.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/vmpk/rss?path=/vmpk"
    regex(/url=.*?vmpk[._-]?v?(\d+(?:\.\d+)+)-mac-x64\.dmg/i)
  end

  depends_on formula: "fluid-synth"
  depends_on macos: ">= :sierra"

  app "vmpk.app"
end
