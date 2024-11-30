cask "tunetag" do
  version "1.6.1"
  sha256 :no_check

  url "https://sweetpproductions.com/products/tunetag/TuneTag.dmg"
  name "TuneTag"
  desc "ID3 and metadata editor for audio files"
  homepage "https://tunetag.sweetpproductions.com/"

  livecheck do
    url "https://sweetpproductions.com/products/tunetag/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "TuneTag.app"

  zap trash: [
    "~/Library/Containers/com.sweetpproductions.TuneTag",
    "~/Library/Group Containers/*.com.sweetpproductions.TuneTag",
  ]
end
