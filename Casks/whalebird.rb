cask "whalebird" do
  version "4.3.1"
  sha256 "d1fed937b756b43f1820b7e5b52e2b51307f4d7897c16a18f302002f680ad2f7"

  # github.com/h3poteto/whalebird-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast "https://github.com/h3poteto/whalebird-desktop/releases.atom"
  name "Whalebird"
  desc "Electron-based Mastodon and Pleroma client"
  homepage "https://whalebird.social/"

  app "Whalebird.app"
end
