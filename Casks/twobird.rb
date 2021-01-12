cask "twobird" do
  version "1.0.25"
  sha256 :no_check

  url "https://www.twobird.com/download/mac"
  appcast "https://dl.twobird.com/latest-mac.yml"
  name "Twobird"
  desc "Email client with collaborative notes"
  homepage "https://www.twobird.com/"

  app "Twobird.app"
end
