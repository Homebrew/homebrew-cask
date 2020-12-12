cask "timely" do
  version "1.1.0"
  sha256 "e1e56f6ebcea702ab4bb71f9fe74eeb3c2ca4f866f59caa5a44952df84f2809a"

  # github.com/Timely/ was verified as official when first introduced to the cask
  url "https://github.com/Timely/desktop-releases/releases/download/darwin-x64-prod-#{version}/Timely-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://app.timelyapp.com/download/mac"
  name "Timely"
  homepage "https://timelyapp.com/"

  app "Timely.app"
end
