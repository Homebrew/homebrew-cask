cask "topaz-gigapixel-ai" do
  version "6.2.0"
  sha256 "1df0c64cf6537e38a7525ee0add402279176df8261b056bb5d3046283c10b354"

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
