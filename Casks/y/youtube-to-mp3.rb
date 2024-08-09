cask "youtube-to-mp3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  arch arm: "-arm"

  version "3.9.9.95"
  sha256 :no_check

  on_sierra :or_older do
    url "https://www.mediahuman.net/files/YouTubeToMP3-1012.dmg"
  end
  on_high_sierra :or_newer do
    url "https://www.mediahuman.net/files/YouTubeToMP3#{arch}.dmg"
  end

  name "MediaHuman YouTube to MP3 Converter"
  desc "Downloads music from playlists or channels"
  homepage "https://www.mediahuman.net/youtube-to-mp3/"

  livecheck do
    url :homepage
    regex(/>\s*Version:.*?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  app "YouTube to MP3.app"

  zap trash: [
    "~/Library/Application Support/MediaHuman/YouTube to MP3/",
    "~/Library/Caches/MediaHuman/YouTube to MP3/",
    "~/Library/Preferences/com.mediahuman.plist",
    "~/Library/Preferences/com.mediahuman.YouTube to MP3.plist",
    "~/Library/Saved Application State/com.mediahuman.YouTube to MP3.savedState",
  ]
end
