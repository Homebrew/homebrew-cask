cask "zulufx" do
  arch arm: "aarch64", intel: "x64"
  choice = on_arch_conditional arm: "arm", intel: "x86"

  version "20.0.1,20.30.11-ca"
  sha256 arm:   "4ae72d8cfc351035d0755ff3def88fbbd918d2af9eff8c811390631ee39d039e",
         intel: "36673603f1de6ceb36f1371152c83d7c7274f4249c6cd30ffd164025e9c4d489"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.csv.second}-fx-jdk#{version.csv.first}-macosx_#{arch}.dmg",
      referer: "https://www.azul.com/downloads/"
  name "ZuluFX"
  desc "Azul ZuluFX Java Standard Edition Development Kit"
  homepage "https://www.azul.com/downloads/"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&bundle_type=jdk&javafx=true&ext=dmg&os=macos&arch=#{choice}"
    strategy :page_match do |page|
      match = page.match(/zulu(\d+(?:\.\d+)*-.*?)-fx-jdk(\d+(?:\.\d+)*)-macosx_#{arch}\.dmg/i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: ">= :mojave"

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

  # No zap stanza required
end
