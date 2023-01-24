cask "topaz-gigapixel-ai" do
  version "6.3.2"
  sha256 "41564db2e6bee3dfa59de275e02eaef786c6c87144a6bd39f3a82bfe63dd51de"

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
