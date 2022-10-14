cask "topaz-sharpen-ai" do
  version "4.1.0"
  sha256 :no_check

  url "https://downloads.topazlabs.com/deploy/TopazSharpenAI/latest/TopazSharpenAI-Full-Installer.dmg"
  name "topaz-sharpen-ai"
  desc "AI-powered image sharpener that produces natural results"
  homepage "https://www.topazlabs.com/sharpen-ai"

  app "Topaz Sharpen AI.app"
end
