cask "topaz-denoise-ai" do
  version "3.7.0"
  sha256 :no_check

  url "https://downloads.topazlabs.com/deploy/TopazDeNoiseAI/latest/TopazDeNoiseAI-Full-Installer.dmg"
  name "Topaz DeNoise AI"
  desc "Eliminate noise in your images"
  homepage "https://www.topazlabs.com/denoise-ai"

  app "Topaz DeNoise AI.app"
end
