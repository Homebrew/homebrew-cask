cask "tunetag" do
  version "1.2"
  sha256 :no_check

  url "https://sweetpproductions.com/products/tunetag/TuneTag.dmg"
  name "TuneTag"
  desc "TuneTag is a lightning fast ID3 and meta data editor for mp3 and m4a audio files."
  homepage "https://tunetag.sweetpproductions.com/"

  livecheck do
    url "https://sweetpproductions.com/products/tunetag/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "TuneTag.app"

  zap trash: [
    "~/Library/Containers/com.sweetpproductions.TuneTag",
    "~/Library/Group Containers/U928YCMMNK.com.sweetpproductions.TuneTag",
  ]
end
