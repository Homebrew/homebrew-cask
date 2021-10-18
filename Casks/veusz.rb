cask "veusz" do
  version "3.4"
  sha256 "c95725d7d73f8cac6c13b8d25b6d6b156bfefc3f00596b4c7e542abc1ea3e453"

  url "https://github.com/veusz/veusz/releases/download/veusz-#{version}/veusz-#{version}-AppleOSX.dmg",
      verified: "github.com/veusz/veusz/"
  name "Veusz"
  desc "Scientific plotting application"
  homepage "https://veusz.github.io/"

  livecheck do
    url :url
    strategy :git
    regex(/^veusz-(\d+(?:\.\d+)*)$/i)
  end

  app "Veusz.app"
end
