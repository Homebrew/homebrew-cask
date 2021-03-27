cask "website-watchman" do
  version "2.12.0,2.12.00"
  sha256 :no_check

  url "https://peacockmedia.software/mac/watchman/watchman.dmg"
  appcast "https://peacockmedia.software/mac/watchman/"
  name "Website Watchman"
  homepage "https://peacockmedia.software/mac/watchman/"

  app "Website Watchman.app"
end
