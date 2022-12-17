cask "zulufx" do
  arch arm: "aarch64", intel: "x64"
  choice = on_arch_conditional arm: "arm", intel: "x86"

  version "17.0.5,17.38.21-ca"
  sha256 arm:   "477aa9577c8c623dc3f93b484bf14350e36eef4685d121165d792e73a04acf95",
         intel: "da720e89bbb6a5881d80f9fccfea4232dbfb51789ca5df3c16ab7e385282e1a1"

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
end
