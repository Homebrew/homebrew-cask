cask "topaz-sharpen-ai" do
  version "4.1.0"
  sha256 "7cfb847ffd0c0a97b5eb301b4eda698a581b4c7f764e92a7a039398232b74a03"

  url "https://downloads.topazlabs.com/deploy/TopazSharpenAI/#{version}/TopazSharpenAI-#{version}-osx-Full-Installer.dmg"
  name "Topaz Sharpen AI"
  desc "AI-powered image sharpener that produces natural results"
  homepage "https://www.topazlabs.com/sharpen-ai"

  livecheck do
    url "https://community.topazlabs.com/c/releases/sharpen-ai"
    strategy :page_match do |page|
      match = page[%r{href=.*?/sharpen[._-]ai[._-]v?(\d+(?:-\d+)+)}i, 1]
      next if match.blank?

      match += ".0"

      match.tr("-", ".")
    end
  end

  app "Topaz Sharpen AI.app"

  # No zap stanza required
end
