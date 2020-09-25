cask "whalebird" do
  version "4.2.3"
  sha256 "264d01c366ec2d8c51d94eb07ade1c4790fb63e4e8c7832c4aaeda949436a3da"

  # github.com/h3poteto/whalebird-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast "https://github.com/h3poteto/whalebird-desktop/releases.atom"
  name "Whalebird"
  desc "Electron-based Mastodon and Pleroma client"
  homepage "https://whalebird.social/"

  app "Whalebird.app"
end
