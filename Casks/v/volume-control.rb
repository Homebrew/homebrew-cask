cask "volume-control" do
  version "2.3.0"
  sha256 "aec78c02cfef544aac2e6f10ae9ca60252f9c3af152939eee72a260f347ba94b"

  url "https://github.com/alberti42/Volume-Control/releases/download/v#{version}/VolumeControl.zip"
  name "Volume Control"
  desc "Control the volume of Apple Music and Spotify using keyboard volume keys"
  homepage "https://github.com/alberti42/Volume-Control"

  livecheck do
    url "https://raw.githubusercontent.com/alberti42/Volume-Control/main/Releases/VolumeControlCast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Volume Control.app"

  zap trash: [
    "~/Library/HTTPStorages/io.alberti42.VolumeControl",
    "~/Library/Preferences/io.alberti42.VolumeControl.plist",
  ]
end
