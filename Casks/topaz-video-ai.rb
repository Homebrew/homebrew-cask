cask "topaz-video-ai" do
  version "3.0.7"
  sha256 "84dd436f0e0043c5e61bdef716e43b185ab4cbeeb0e51f21696505039ed8e33d"

  url "https://downloads.topazlabs.com/deploy/TopazVideoAI/#{version}/TopazVideoAI-#{version}.dmg"
  name "Topaz Video AI"
  desc "Video upscaler and quality enhancer"
  homepage "https://www.topazlabs.com/topaz-video-ai"

  livecheck do
    url "https://topazlabs.com/d/veai/latest/mac/full"
    strategy :header_match
  end

  app "Topaz Video AI.app"

  zap trash: [
    "~/Library/Preferences/com.topazlabs.Topaz-Video-AI.plist",
    "~/Library/Saved Application State/com.topazlabs.Topaz-Video-AI.savedState",
  ]
end
