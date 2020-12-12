cask "wanna" do
  version "1.0.0-alpha.2+flex"
  sha256 "73a126f1f130908e91dac1c16117516dfc1d92c9eaf6a105fd02c2c0c4872a72"

  # github.com/mkermani144/wanna/ was verified as official when first introduced to the cask
  url "https://github.com/mkermani144/wanna/releases/download/#{version}/wanna-#{version.split("+").first}.dmg"
  appcast "https://github.com/mkermani144/wanna/releases.atom"
  name "Wanna"
  homepage "https://wanna.js.org/"

  app "wanna.app"
end
