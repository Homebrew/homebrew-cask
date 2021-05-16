cask "vmpk" do
  version "0.8.3"
  sha256 "f188cd943795a7aa624c4f02740e5f4c49bfcb6ddfc8068e5f2312fb5f11728c"

  url "https://downloads.sourceforge.net/vmpk/#{version.major_minor_patch}/vmpk-#{version}-mac-x64.dmg",
      verified: "downloads.sourceforge.net/vmpk/"
  name "VMPK"
  desc "Virtual MIDI Piano Keyboard"
  homepage "https://vmpk.sourceforge.io/"

  depends_on macos: ">= :sierra"

  app "vmpk.app"
end
