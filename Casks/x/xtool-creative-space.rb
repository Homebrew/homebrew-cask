cask "xtool-creative-space" do
  arch arm: "-arm64"

  on_arm do
    version "2.2.23,28,2e1bddec-0d1a-4dab-bfd5-de1b68cacd35,2024-10-11-11-50-02"
    sha256  "d928d3e71e25ded28b208547167dd1ab8753f1a1e8935fc19091d6a8fec38097"
  end
  on_intel do
    version "2.2.23,16,0fbeb19a-b594-4f86-a200-e5e736e6f038,2024-10-11-11-24-25"
    sha256 "4bdd6b51d35974590b75bc9409bbb422fad85f76474923669a8d5524058198bb"
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

  app "xTool Creative Space.app"

  zap trash: [
    "~/Library/Application Support/xTool Creative Space",
    "~/Library/Logs/xTool Creative Space",
    "~/Library/Preferences/com.makeblock.xcs.plist",
    "~/Library/Saved Application State/com.makeblock.xcs.savedState",
  ]
end
