cask "xtool-creative-space" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "2.7.22,28,6bc0e646-afc8-4fe0-9331-c744b6e80b44,2025-06-19-11-05-09"
    sha256 "997fd3eb4e509de9433bc852ffa059d3df0f0115e25d91a1a7cbd363df42b389"
  end
  on_intel do
    version "2.7.22,16,fc7c076a-2790-4f90-aec2-871f55bf1745,2025-06-19-11-08-16"
    sha256 "d124e5d64e7b2364458fdc1f5df88cc303aa62a20ae74cf0d3d8136347c7de38"
  end

  url "https://storage-us.atomm.com/resource/efficacy/xcs/prod-us/packages/#{version.csv.second}/#{version.csv.third}/xTool-Creative-Space-#{version.csv.first}-#{version.csv.fourth}-#{arch}.dmg",
      verified: "storage-us.atomm.com/resource/efficacy/xcs/"
  name "xTool Creative Space"
  desc "Design and control software for xTool laser machines"
  homepage "https://www.xtool.com/pages/software"

  livecheck do
    url :homepage
    regex(%r{
      /([^/]+)/([^/]+)/xTool[._-]Creative[._-]Space[._-]v?(\d+(?:\.\d+)+)[._-](\d+(?:-\d+)+)
      (?:[._-]#{arch})?\.dmg
    }ix)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[3]},#{match[1]},#{match[2]},#{match[4]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "xTool Creative Space.app"

  zap trash: [
    "~/Library/Application Support/xTool Creative Space",
    "~/Library/Logs/xTool Creative Space",
    "~/Library/Preferences/com.makeblock.xcs.plist",
    "~/Library/Saved Application State/com.makeblock.xcs.savedState",
  ]
end
