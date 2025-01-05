cask "xtool-creative-space" do
  arch arm: "-arm64"

  on_arm do
    version "2.3.24,28,b1ea72cd-d568-49c0-bed3-ad648992d344,2024-11-26-20-54-38"
    sha256  "9cca298813badcbccfcdb0a5b66322ed03dfeb4d1ec8a8cfec7403346d03027c"
  end
  on_intel do
    version "2.3.24,16,170d80ef-c06b-46c3-bd84-8284acaf6d4c,2024-11-26-20-57-10"
    sha256 "eac06393cb227dc2acbbd9fa73dde3f4cd32ca4507c415694dc0ae9a5653ce79"
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
