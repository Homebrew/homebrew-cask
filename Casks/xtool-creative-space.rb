cask "xtool-creative-space" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "1.3.21,28.268.1686756140022,2-2023-06-14-22-29-31"
    sha256  "c629bd7ccb29d119d9d4232968d4bf3e6d4ce6f2f4079d751402ce9baa5f9670"
  end
  on_intel do
    version "1.3.21,16.267.1686754770561,2-2023-06-14-22-30-04"
    sha256 "64a695f3de1afd5d0bf439176f9f2347453c9d1c2e8a4718e7eef639cb9cf034"
  end

  url "https://res-us.makeblock.com/ms/updater/production/packages/#{version.csv.second.tr(".", "/")}/xTool%20Creative%20Space-#{version.csv.first}-#{version.csv.third}-#{arch}.dmg",
      verified: "res-us.makeblock.com/ms/updater/production/packages/"
  name "xTool Creative Space"
  desc "Design and control software for xTool laser machines"
  homepage "https://www.xtool.com/pages/software"

  livecheck do
    url :homepage
    regex(%r{href=.*?packages/(.*)/xTool\s?Creative\s?Space[._-](\d+(?:\.\d+)+)-(\d+(?:-\d+)+)-#{arch}\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[0].tr("/", ".")},#{match[2]}"
      end
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
