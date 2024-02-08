cask "zap" do
  arch arm: "_aarch64"

  version "2.14.0"
  sha256 arm:   "fb3369338252e22470bb38d120233bd9857119806f9f8be681f985e6a5174847",
         intel: "3b9862a647b1c5c26d6917f2316113dfaceac06bdb79ad3f2c96e0cbd73861f7"

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
