cask "vmpk" do
  version "0.9.1"
  sha256 "887d3d0ad99c1ee98b8c37b4381aee1073734b245a6d14ad2e7f3632a15ec1e1"

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

  zap trash: [
    "~/Library/Preferences/net.sourceforge.vmpk.VMPK.plist",
    "~/Library/Saved Application State/net.sourceforge.vmpk.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
