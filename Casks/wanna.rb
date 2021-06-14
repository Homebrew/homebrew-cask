cask "wanna" do
  version "1.0.0-alpha.2+flex"
  sha256 "73a126f1f130908e91dac1c16117516dfc1d92c9eaf6a105fd02c2c0c4872a72"

  url "https://github.com/mkermani144/wanna/releases/download/#{version}/wanna-#{version.split("+").first}.dmg",
      verified: "github.com/mkermani144/wanna/"
  name "Wanna"
  homepage "https://wanna.js.org/"

  app "wanna.app"

  caveats do
    discontinued
  end
end
