cask "zap" do
  arch arm: "_aarch64"

  version "2.15.0"
  sha256 arm:   "4426253f4702bbd5fb4779bcf4d62490b2c10ec851c4ebc94ced8f156d2e5509",
         intel: "ae025403e46cdefff013cd0c3b88d8edc5a183a76daa63cb62c7c629005337a5"

  url "https://github.com/zaproxy/zaproxy/releases/download/v#{version}/ZAP_#{version}#{arch}.dmg",
      verified: "github.com/zaproxy/zaproxy/"
  name "Zed Attack Proxy"
  name "ZAP"
  desc "Free and open source web app scanner"
  homepage "https://www.zaproxy.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ZAP.app"

  zap trash: [
    "~/Library/Application Support/ZAP",
    "~/Library/Preferences/org.zaproxy.zap.plist",
  ]
end
