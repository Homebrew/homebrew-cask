cask "youtube-to-mp3" do
  version "3.9.9.54"
  sha256 :no_check

  url "https://www.mediahuman.com/files/YouTubeToMP3.dmg"
  name "MediaHuman YouTube to MP3 Converter"
  desc "Downloads music from playlists or channels"
  homepage "https://www.mediahuman.com/youtube-to-mp3-converter/"

  livecheck do
    skip "unversioned URL"
  end

  app "YouTube to MP3.app"
end
