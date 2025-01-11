cask "zap" do
  arch arm: "_aarch64"

  version "2.16.0"
  sha256 arm:   "189a051acccde0dee8a6f194abf782906af65fbdab7bc6a572edfc6a58f048ab",
         intel: "dc353ddd98e4678cd545c174c717ce630ce76ae2f06f2dbebb107a813cf54b74"

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
