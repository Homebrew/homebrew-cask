cask "typewhisper" do
  version "1.8.3"
  sha256 "f3a56295af0ff489d4be43a8f4bfbd193e592d3eb2bf6dc4cb12bc0cd09cc421"

  url "https://github.com/TypeWhisper/typewhisper-mac/releases/download/v#{version}/TypeWhisper-v#{version}.dmg"
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
    "~/Library/Application Scripts/2D8ALY3LCL.com.typewhisper.mac",
    "~/Library/Application Scripts/com.typewhisper.mac.transcribe-action",
    "~/Library/Application Scripts/com.typewhisper.mac.widgets",
    "~/Library/Application Support/TypeWhisper",
    "~/Library/Caches/com.typewhisper.mac",
    "~/Library/Containers/com.typewhisper.mac.transcribe-action",
    "~/Library/Containers/com.typewhisper.mac.widgets",
    "~/Library/Group Containers/2D8ALY3LCL.com.typewhisper.mac",
    "~/Library/HTTPStorages/com.typewhisper.mac",
    "~/Library/Preferences/com.typewhisper.mac.plist",
  ]
end
