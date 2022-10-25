cask "topaz-gigapixel-ai" do
  version "6.2.2"
  sha256 "00862d8a76817e8e10a769f6255e6c45cc44e27715334cea063ddca331a041e1"

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
