cask "vlcremote-setup" do
  version "3.70"
  sha256 "61db4b11491cfffaa9c54184e99ae75dbf288a5f4ffff88a9f0f318c8b983d54"

  url "https://hobbyistsoftware.com/Downloads/VLCRemote/Versions/VLCSetup_#{version}.dmg"
  name "VLC Remote Setup Helper"
  desc "Set up VLC for VLC Remote"
  homepage "https://hobbyistsoftware.com/VLC"

  livecheck do
    url "https://hobbyistsoftware.com/vlc-versions"
    strategy :page_match
    regex(%r{href=.*?/VLCSetup_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "VLC Setup.app", target: "VLC Remote Setup.app"
end
