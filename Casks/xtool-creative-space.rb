cask "xtool-creative-space" do
  arch arm: "arm64", intel: "x64"

  on_intel do  
    version "16,234,1678158837754,1.2.14-2023-03-06-13-36-37"
    sha256 "2720a0dfd87cdf73f71831a5335722b5898401173bdb0cf1f406fbb3e92c3164"
  end
  on_arm do
    version "28,235,1678160204427,1.2.14-2023-03-06-13-34-59"
    sha256  "a99e6d8b30d7a17560a7ea2af1d28f5fa8fe382420186d6eba37f1d5a177e3bf"
  end

  url "https://res-us.makeblock.com/ms/updater/production/packages/#{version.csv.first}/#{version.csv.second}/#{version.csv.third}/xTool%20Creative%20Space-#{version.csv.fourth}-#{arch}.dmg",
      verified: "res-us.makeblock.com/ms/updater/production/packages/"
  name "xTool Creative Space"
  desc "Design and control software for xTool laser machines"
  homepage "https://www.xtool.com/pages/software"

  livecheck do
    # url "https://www.xtool.com/pages/software"
    # regex(/href=.*\/updater\/production\/packages\/(\d+\/\d+\/\d+\/(?:xTool Creative Space[._-])\d+\.\d+.\d+-\d+-\d+-\d+-\d+-\d+-\d+)-x64.dmg/i)
    skip "No version information available"
  end

  app "xTool Creative Space.app"
end
