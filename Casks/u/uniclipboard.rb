cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "14e2bfa9552706fdfc91c6c21532a3ea4eb6fac1ac50aa7fc325ff2daee82b29",
         intel: "764af12b8707574efdf301afe328b443aacd9dfc02ebf51e62855502bd52c72a"

  url "https://github.com/UniClipboard/UniClipboard/releases/download/v#{version}/UniClipboard_#{version}_#{arch}.dmg",
      verified: "github.com/UniClipboard/UniClipboard/"
  name "UniClipboard"
  desc "Cross-device clipboard syncing tool"
  homepage "https://www.uniclipboard.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "UniClipboard.app"

  zap trash: [
    "~/Library/Application Support/app.uniclipboard.desktop",
    "~/Library/Caches/app.uniclipboard.desktop",
    "~/Library/Logs/app.uniclipboard.desktop",
  ]
end
