cask "textsniper" do
  version "1.7.0"
  sha256 "33faf6945509c6f1326e24905e226489a33d497ab7a814f0e70ecf2900065186"

  url "https://s3.amazonaws.com/textsniper.app/TextSniper#{version}.dmg",
      verified: "s3.amazonaws.com/textsniper.app/"
  name "textsniper"
  desc "Extract text from images and other digital documents in seconds"
  homepage "https://textsniper.app/"

  livecheck do
    url "https://textsniper.app/latest_releases.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "TextSniper.app"
end
