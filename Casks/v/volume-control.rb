cask "volume-control" do
  version "2.7.0"
  sha256 "0b07e566a576e448b7fa14ecc8e8be8049fe91b3c7ac36c919ff009010b3a548"

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
