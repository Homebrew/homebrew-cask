cask "wanna" do
  version "1.0.0-alpha.2+flex"
  sha256 "73a126f1f130908e91dac1c16117516dfc1d92c9eaf6a105fd02c2c0c4872a72"

  url "https://github.com/mkermani144/wanna/releases/download/#{version}/wanna-#{version.split("+").first}.dmg",
      verified: "github.com/mkermani144/wanna/"
  name "Wanna"
  homepage "https://wanna.js.org/"

  livecheck do
    url "https://github.com/mkermani144/wanna/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/v?(\d+(?:\.\d+)*[^/]*)%2B([^/]+)/[^/]*?\.dmg}i)
      "#{match[1]}+#{match[2]}"
    end
  end

  app "wanna.app"

  caveats do
    discontinued
  end
end
