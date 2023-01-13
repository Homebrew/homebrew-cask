cask "topaz-denoise-ai" do
  version "3.7.0"
  sha256 "d30f98889f7f5b68141ade1a9724797352541b17dab4b968bf0e66035a6dcfda"

  url "https://downloads.topazlabs.com/deploy/TopazDeNoiseAI/#{version}/TopazDeNoiseAI-#{version}-osx-Full-Installer.dmg"
  name "Topaz DeNoise AI"
  desc "Eliminate noise in your images"
  homepage "https://www.topazlabs.com/denoise-ai"

  livecheck do
    url "https://community.topazlabs.com/c/releases/denoise-ai"
    strategy :page_match do |page|
      match = page[%r{href=.*?/denoise[._-](\d+(?:-\d+)+)}i, 1]
      next if match.blank?

      match.tr("-", ".")
    end
  end

  app "Topaz DeNoise AI.app"

  # No zap stanza required
end
