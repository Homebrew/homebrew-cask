cask "xtool-creative-space" do
  arch arm: "-arm64"

  on_arm do
    version "2.4.27,28,30848857-c17a-455c-8590-91fd91814b3d,2025-01-14-11-30-45"
    sha256  "64994eb3d6cd5d48c5d5a68e2e9c99bee390908991eaa394a4166ad875cf3273"
  end
  on_intel do
    version "2.4.27,16,675209ac-6c84-470a-8367-7988294895bc,2025-01-14-11-26-04"
    sha256 "ccbb8e0e8719d9cfa6d129e004fc57fe65924b1271c9d2d061ce70720394a2b6"
  end

  url "https://storage-us.xtool.com/resource/efficacy/xcs/prod-us/packages/#{version.csv.second}/#{version.csv.third}/xTool-Creative-Space-#{version.csv.first}-#{version.csv.fourth}#{arch}.dmg"
  name "xTool Creative Space"
  desc "Design and control software for xTool laser machines"
  homepage "https://www.xtool.com/pages/software"

  livecheck do
    url :homepage
    regex(%r{/([^/]+)/([^/]+)/xTool[._-]Creative[._-]Space[._-]v?(\d+(?:\.\d+)+)[._-](\d+(?:-\d+)+)#{arch}\.dmg}i)
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
