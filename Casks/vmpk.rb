cask "vmpk" do
  version "0.8.9"
  sha256 "f7b4117c175245f8c13af8dee5aee03accb200fe7b00deee88ffeee34627643e"

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
