cask "uniclipboard" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "ccc630943cb74f4dfde81f7e6e4c44d5098628bc28b2707bec43ab01360eba3e",
         intel: "5b47c595cd292b0ac3902444c51ff95ace796ca22c8f7bfb0c07225c0594016e"

  url "https://github.com/UniClipboard/UniClipboard/releases/download/v#{version}/UniClipboard_#{version}_#{arch}.dmg"
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
    "~/Library/WebKit/app.uniclipboard.desktop",
  ]
end
