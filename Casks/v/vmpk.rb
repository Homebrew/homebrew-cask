cask "vmpk" do
  version "0.9.0"
  sha256 "b2ce743f8f986575865dcc994cab89f43bff8da6d4e43d1380f846b2807b1bd6"

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
end
