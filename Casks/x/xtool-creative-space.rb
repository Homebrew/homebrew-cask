cask "xtool-creative-space" do
  arch arm: "arm64", intel: "amd64"

  on_arm do
    version "2.6.38,28,48e5cd2f-2ea0-4982-a16e-640e07bebacc,2025-04-21-18-35-07"
    sha256 "709637ed2a9ed363192381061e29edbd0bb3c007a3245dc125ee69e4673009bf"
  end
  on_intel do
    version "2.6.38,16,6f11195b-cb92-488a-ab3e-635aa873ff1a,2025-04-21-18-37-40"
    sha256 "b07dbc81406d5284d69d6dd728c7192dc7c31b7ec46e21651362615e46a9af25"
  end

  url "https://storage-us.xtool.com/resource/efficacy/xcs/prod-us/packages/#{version.csv.second}/#{version.csv.third}/xTool-Creative-Space-#{version.csv.first}-#{version.csv.fourth}-#{arch}.dmg"
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
