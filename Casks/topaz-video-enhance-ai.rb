cask "topaz-video-enhance-ai" do
  version "2.6.4"
  sha256 "e22c4c4abee9917d5b0daa283e91b7d2edfbaefb1e00f13d2904c6911d5d319c"

  url "https://downloads.topazlabs.com/deploy/TopazVideoEnhanceAI/#{version}/TopazVideoEnhanceAI-#{version}-univ.dmg"
  name "Topaz Video Enhance AI"
  desc "Video upscaler and quality enhancer"
  homepage "https://www.topazlabs.com/video-enhance-ai"

  livecheck do
    url "https://topazlabs.com/d/veai/latest/mac/full"
    strategy :header_match
  end

  app "Topaz Video Enhance AI.app"
end
