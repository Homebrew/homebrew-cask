cask "textsniper" do
  version "1.7.0"
  sha256 :no_check

  url "https://textsniper.app/api/downloads/mac-latest"
  name "textsniper"
  desc "Extract text from images and other digital documents in seconds"
  homepage "https://textsniper.app/"

  auto_updates true

  app "TextSniper.app"
end
