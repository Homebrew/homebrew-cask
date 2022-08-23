cask "zulufx" do
  arch arm: "aarch64", intel: "x64"
  choice = on_arch_conditional arm: "arm", intel: "x86"

  version "17.0.4,17.36.13-ca"
  sha256 arm:   "eb1d209b0f91a7fa8a2149faa3f5a17de878a4c501823034e4982e954d9afbed",
         intel: "ba4a3c89554e7fed10bfbabe4e2691cd8afbcf5413974b5d5d7d4afb62f36e25"

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
