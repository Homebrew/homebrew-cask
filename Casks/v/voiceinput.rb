cask "voiceinput" do
  version "0.75.7"
  sha256 "e5130276de813133abfb01ad55259a410710ccad9ba9d18ba7c505635ee112ae"

  url "https://dl.voiceinput.app/VoiceInput_v#{version}.dmg"
  name "VoiceInput"
  name "声忆"
  desc "Hold a key, speak, release to type"
  homepage "https://voiceinput.app/"

  livecheck do
    url "https://dl.voiceinput.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "VoiceInput.app"

  zap trash: [
    "~/Library/Application Support/VoiceInput",
    "~/Library/Caches/com.jiangfyi.voiceinput",
    "~/Library/Preferences/com.jiangfyi.voiceinput.plist",
    "~/Library/Saved Application State/com.jiangfyi.voiceinput.savedState",
  ]
end
