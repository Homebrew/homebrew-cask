cask "vb-cable" do
  version "108"
  sha256 "e46b41c6876995403cb1da37d7c0d566f59edd83aa9fcbcdc3a205eb0b6e05c7"

  url "https://download.vb-audio.com/Download_MAC/VBCable_MACDriver_Pack#{version}.zip"
  name "VB-CABLE Virtual Audio Device"
  desc "Virtual audio cable for routing audio from one application to another"
  homepage "https://vb-audio.com/Cable/index.htm"

  livecheck do
    url :homepage
    regex(%r{href=.*?/VBCable_MACDriver_Pack(\d+)\.zip}i)
  end

  container nested: "VBCable_MACDriver_Pack#{version}.dmg"

  pkg "vb-cable-installer.pkg"

  uninstall launchctl: "com.vbaudio.vbcableagent",
            pkgutil:   "com.vbaudio.vbcable",
            delete:    "/Library/Preferences/com.vbaudio.vbcable.plist"

  zap trash: "~/Library/Saved Application State/com.vbaudio.vbcablecontrolpanel.savedState"
end
