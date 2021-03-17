cask "timely" do
  version "1.1.0"
  sha256 "e1e56f6ebcea702ab4bb71f9fe74eeb3c2ca4f866f59caa5a44952df84f2809a"

  url "https://github.com/Timely/desktop-releases/releases/download/darwin-x64-prod-#{version}/Timely-#{version}.dmg",
      verified: "github.com/Timely/"
  name "Timely"
  homepage "https://timelyapp.com/"

  livecheck do
    url "https://app.timelyapp.com/download/mac"
    strategy :header_match
  end

  app "Timely.app"
end
