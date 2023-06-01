cask "xtool-creative-space" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "28.265.1685528104377,1.3.21-2023-05-30-15-17-20"
    sha256  "cf0da60fee213cc0ad8854ab1996389a49fce3864b1ad654025b2eb976abc5f2"
  end
  on_intel do
    version "16.234.1678158837754,1.2.14-2023-03-06-13-36-37"
    sha256 "2720a0dfd87cdf73f71831a5335722b5898401173bdb0cf1f406fbb3e92c3164"
  end

  url "https://res-us.makeblock.com/ms/updater/production/packages/#{version.csv.first.tr(".", "/")}/xTool%20Creative%20Space-#{version.csv.second}-#{arch}.dmg",
      verified: "res-us.makeblock.com/ms/updater/production/packages/"
  name "xTool Creative Space"
  desc "Design and control software for xTool laser machines"
  homepage "https://www.xtool.com/pages/software"

  livecheck do
    url "https://www.xtool.com/pages/software"
    regex(%r{href=.*?packages/(.*)/xTool\s?Creative\s?Space[._-](.*?)[._-]#{arch}.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1].tr("/", ".")},#{match[2]}"
    end
  end

  app "xTool Creative Space.app"

  zap trash: [
    "~/Library/Application Support/xTool Creative Space",
    "~/Library/Logs/xTool Creative Space",
    "~/Library/Preferences/com.makeblock.xcs.plist",
    "~/Library/Saved Application State/com.makeblock.xcs.savedState",
  ]
end
