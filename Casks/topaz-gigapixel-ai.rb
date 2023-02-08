cask "topaz-gigapixel-ai" do
  version "6.3.3"
  sha256 "4e660fa1e709409097ddd821f22213a8012e72bc18caea6a5fe47c85a6a81ef0"

  url "https://downloads.topazlabs.com/deploy/TopazGigapixelAI/#{version}/TopazGigapixelAI-#{version}-osx-Full-Installer.dmg"
  name "Topaz Gigapixel AI"
  desc "AI image upscaler"
  homepage "https://www.topazlabs.com/gigapixel-ai"

  livecheck do
    url "https://community.topazlabs.com/c/releases/gigapixel-ai"
    strategy :page_match do |page|
      match = page[%r{href=.*?/gigapixel[._-]v?(\d+(?:-\d+)+)}i, 1]
      next if match.blank?

      match.tr("-", ".")
    end
  end

  app "Topaz Gigapixel AI.app"

  # No zap stanza required
end
