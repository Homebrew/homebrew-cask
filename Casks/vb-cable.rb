cask "vb-cable" do
  version "107"
  sha256 "ba0bc4674882f828eeb001540460fee04641fdd4c43da7c08a2360644d3536da"

  url "https://download.vb-audio.com/Download_MAC/VBCable_MACDriver_Pack#{version}.dmg"
  name "VB-CABLE Virtual Audio Device"
  desc "Virtual audio cable for routing audio from one application to another"
  homepage "https://www.vb-audio.com/Cable/index.htm"

  pkg "vb-cable-installer.pkg"

  uninstall launchctl: "com.vbaudio.vbcableagent",
            pkgutil:   "com.vbaudio.vbcable",
            delete:    "/Library/Preferences/com.vbaudio.vbcable.plist"
end
