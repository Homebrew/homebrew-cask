cask "typewhisper" do
  version "1.6.0"
  sha256 "10ef14b5db7dba0cf93072553052ee9725f65551ec9acb67de4a26d6a9f48e87"

  url "https://github.com/TypeWhisper/typewhisper-mac/releases/download/v#{version}/TypeWhisper-v#{version}.dmg",
      verified: "github.com/TypeWhisper/typewhisper-mac/"
  name "TypeWhisper"
  desc "Speech-to-text and AI text processing"
  homepage "https://www.typewhisper.com/"

  livecheck do
    url "https://typewhisper.github.io/typewhisper-mac/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "TypeWhisper.app"

  zap trash: [
    "~/Library/Application Support/TypeWhisper",
    "~/Library/Caches/com.typewhisper.mac",
    "~/Library/HTTPStorages/com.typewhisper.mac",
    "~/Library/Preferences/com.typewhisper.mac.plist",
  ]
end
