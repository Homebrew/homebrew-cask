cask "zap" do
  arch arm: "_aarch64"

  version "2.16.1"
  sha256 arm:   "aa3d1293856fdc380039a866b1e71c5ea24e6f6e3d0119607e365346b07d94d2",
         intel: "79d7bc6db7e9583d3d90549791843998f0cf170ed975cfa01fac657f2e0d9120"

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
