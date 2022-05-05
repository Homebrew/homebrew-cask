cask "zulu" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"
  choice = Hardware::CPU.intel? ? "x86" : "arm"

  version "18.0.1,18.30.11-ca"

  if Hardware::CPU.intel?
    sha256 "e26f3c3f4d2a388aa0d7fa60f5473301155827192da2e09550ff5bf15982d166"
  else
    sha256 "6bf03aa424cd775eacd3530104c08319971ff1fb46eff8857f72fdff16409e94"
  end

  url "https://cdn.azul.com/zulu/bin/zulu#{version.csv.second}-jdk#{version.csv.first}-macosx_#{arch}.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul Zulu Java Standard Edition Development Kit"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/downloads/"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&bundle_type=jdk&javafx=false&ext=dmg&os=macos&arch=#{choice}"
    strategy :page_match do |page|
      match = page.match(/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)*)-macosx_#{arch}\.dmg/i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: ">= :mojave"

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
