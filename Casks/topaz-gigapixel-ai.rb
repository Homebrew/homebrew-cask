cask "topaz-gigapixel-ai" do
  version "6.3.0"
  sha256 "483dbbc3d6a50d5f0503bf2f1914bf0297a9853663f8b346d7a325a4e3aa47d6"

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
