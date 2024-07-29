cask "youtube-to-mp3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "3.9.9.94"
  sha256 :no_check

  url "https://www.mediahuman.net/files/YouTubeToMP3.dmg"
  name "MediaHuman YouTube to MP3 Converter"
  desc "Downloads music from playlists or channels"
  homepage "https://www.mediahuman.net/youtube-to-mp3/"

  livecheck do
    url :homepage
    regex(/>\s*Version:.*?(\d+(?:\.\d+)+)/i)
  end

  app "YouTube to MP3.app"

  zap trash: [
    "~/Library/Application Support/MediaHuman/",
    "~/Library/Caches/MediaHuman/",
    "~/Library/Preferences/com.mediahuman.plist",
    "~/Library/Preferences/com.mediahuman.YouTube to MP3.plist",
    "~/Library/Saved Application State/com.mediahuman.YouTube to MP3.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
