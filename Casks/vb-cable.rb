cask "vb-cable" do
  version "108"
  sha256 "9de5ecc1bc4df1a7ec179eed4a89d66b3f197081936ec34d58054bd54350aa80"

  url "https://download.vb-audio.com/Download_MAC/VBCable_MACDriver_Pack#{version}.dmg"
  name "VB-CABLE Virtual Audio Device"
  desc "Virtual audio cable for routing audio from one application to another"
  homepage "https://www.vb-audio.com/Cable/index.htm"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/VBCable_MACDriver_Pack(\d+)\.dmg}i)
  end

  pkg "vb-cable-installer.pkg"

  uninstall launchctl: "com.vbaudio.vbcableagent",
            pkgutil:   "com.vbaudio.vbcable",
            delete:    "/Library/Preferences/com.vbaudio.vbcable.plist"
end
