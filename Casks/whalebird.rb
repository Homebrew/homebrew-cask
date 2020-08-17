cask "whalebird" do
  version "4.2.1"
  sha256 "b930f1ce44a30ef0243b532e9b8eb12beadec65261646f2be048dd8a8ccc21a6"

  # github.com/h3poteto/whalebird-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast "https://github.com/h3poteto/whalebird-desktop/releases.atom"
  name "Whalebird"
  homepage "https://whalebird.social/"

  app "Whalebird.app"
end
