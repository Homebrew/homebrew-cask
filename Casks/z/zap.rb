cask "zap" do
  arch arm: "_aarch64"

  version "2.17.0"
  sha256 arm:   "3b3c6c8b105a33cb2a7d718e7f9aa41418a6d8aae3887d94a42523b5eeac723b",
         intel: "a3d246125dd6e576036af8fb29f90377fc72a0a5df8c89c54711972b449582c7"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "ZAP.app"

  zap trash: [
    "~/Library/Application Support/ZAP",
    "~/Library/Preferences/org.zaproxy.zap.plist",
  ]
end
