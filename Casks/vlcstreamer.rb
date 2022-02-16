cask "vlcstreamer" do
  version "5.25"
  sha256 "7f5d68a69af857804150c7d24209b38fd50a136d0cda42b0abb8626a4abe2797"

  url "https://hobbyistsoftware.com/Downloads/VLCStreamer/Versions/VLCStreamer_#{version}.dmg"
  name "VLC Streamer"
  desc "Stream videos to mobile devices using VLC"
  homepage "https://hobbyistsoftware.com/vlcstreamer"

  livecheck do
    url "https://hobbyistsoftware.com/vlcstreamer-versions"
    regex(%r{href=.*?/VLCStreamer_(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "VLCStreamer.app"

  zap trash: [
    "~/Library/Application Support/com.HobbyistSoftware.VLCStreamer",
    "~/Library/Application Support/VLCStreamer",
    "~/Library/Preferences/com.HobbyistSoftware.VLCStreamer.plist",
  ]
end
