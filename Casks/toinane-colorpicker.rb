cask "toinane-colorpicker" do
  version "2.0.3"
  sha256 "536a4bb6cae0f1fe029b3e316a12a5823e6682e60a5ecbfb7030087bbe5cac0a"

  # github.com/toinane/colorpicker/ was verified as official when first introduced to the cask
  url "https://github.com/toinane/colorpicker/releases/download/#{version}/Colorpicker_#{version}_darwin.zip"
  appcast "https://github.com/toinane/colorpicker/releases.atom"
  name "Colorpicker"
  homepage "https://colorpicker.fr/"

  app "Colorpicker.app"

  zap trash: "~/Library/Application Support/Colorpicker"
end
