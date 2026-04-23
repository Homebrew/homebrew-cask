cask "wavee" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "b442a03728149244628aca0bbf07b15147f2f7dfa83b85bde3f84ef95542b5fa",
         intel: "61cf31cef1a9de6198f399f8f95c37b23d8b2e97eafe004b50718e01f4235c52"

  url "https://github.com/Johuniq/wavee/releases/download/v#{version}/Wavee_#{version}_#{arch}.dmg"
  name "Wavee"
  desc "Voice to text desktop application powered by AI"
  homepage "https://github.com/Johuniq/wavee"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Wavee.app"

  zap trash: [
    "~/Library/Application Support/com.johuniq.wavee",
    "~/Library/Caches/com.johuniq.wavee",
    "~/Library/Preferences/com.johuniq.wavee.plist",
    "~/Library/Saved Application State/com.johuniq.wavee.savedState",
    "~/Library/WebKit/com.johuniq.wavee",
  ]
end
