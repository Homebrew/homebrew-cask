cask "yu-writer" do
  version "0.5.3,beta"
  sha256 "4fff4042c6ac7c047097c5e6d59a8a1c3f9dacfbdcadb3121904426413b38e06"

  url "https://github.com/hemashushu/yu-writer.site/releases/download/v#{version.csv.first}/yu-writer-#{version.csv.second}-#{version.csv.first}-macos.dmg",
      verified: "github.com/hemashushu/yu-writer.site/"
  name "Yu Writer"
  homepage "https://hemashushu.github.io/yu-writer.site/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/yu-writer-(?:([a-z]+)-)?(\d+(?:\.\d+)*)-macos\.dmg}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "Yu Writer.app"

  zap trash: [
    "~/Library/Application Support/Yu Writer",
    "~/Library/Caches/Yu Writer",
    "~/Library/Preferences/com.github.yu-writer.helper.plist",
    "~/Library/Preferences/com.github.yu-writer.plist",
  ]
end
