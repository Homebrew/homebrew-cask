cask "xcasca" do
  arch arm: "arm64", intel: "x64"

  version "1.1.2"
  sha256 arm:   "7e8db761557a1290883b98e539135248ccd7ea832d78a360d85e4464db50031f",
         intel: "7703cf9557d180b193556ddedc494d867c03ae98746cc9c4d2e7363c83af99b5"

  url "https://cdn.netsarang.net/1bd8fb31/Xcasca-#{version}-#{arch}.dmg"
  name "Xcasca"
  desc "SSH terminal and SFTP file transfer client"
  homepage "https://www.xcasca.com/"

  livecheck do
    url "https://www.xcasca.com/api/latest-version"
    strategy :json do |json|
      json.dig("desktop", "macos")
    end
  end

  depends_on macos: :monterey

  app "Xcasca.app"

  zap trash: [
    "~/Library/Application Support/Xcasca",
    "~/Library/Preferences/com.netsarang.xcasca.plist",
  ]
end
