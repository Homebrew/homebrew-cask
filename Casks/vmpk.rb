cask "vmpk" do
  version "0.8.2"
  sha256 "5ea821806afbe0b0c93e01398dcf4268541c6b099a82868ff97c5cef0c4e31ce"

  url "https://downloads.sourceforge.net/vmpk/#{version.major_minor_patch}/vmpk-#{version}-mac-x64.dmg",
      verified: "downloads.sourceforge.net/vmpk/"
  name "VMPK"
  desc "Virtual MIDI Piano Keyboard"
  homepage "https://vmpk.sourceforge.io/"

  depends_on macos: ">= :sierra"

  app "vmpk.app"
end
