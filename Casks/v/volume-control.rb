cask "volume-control" do
  version "2.2.2"
  sha256 "f6b3d1d87021fb31b89a52b5e21dd70482d1001429b431e09efdd8872c023834"

  url "https://github.com/alberti42/Volume-Control/releases/download/v#{version}/VolumeControl.zip"
  name "Volume Control"
  desc "Control the volume of Apple Music and Spotify using keyboard volume keys"
  homepage "https://github.com/alberti42/Volume-Control"

  livecheck do
    url "https://raw.githubusercontent.com/alberti42/Volume-Control/main/Releases/VolumeControlCast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Volume Control.app"

  zap trash: [
    "~/Library/HTTPStorages/io.alberti42.VolumeControl",
    "~/Library/Preferences/io.alberti42.VolumeControl.plist",
  ]
end
