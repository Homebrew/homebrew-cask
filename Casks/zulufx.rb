cask "zulufx" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"
  choice = Hardware::CPU.intel? ? "x86" : "arm"

  version "15.0.5,15.36.13-ca"

  if Hardware::CPU.intel?
    sha256 "2d6b24911b2d8f5e363a564090edb8f6cc941a5e02a43d98b2d2edaa23f5243a"
  else
    sha256 "22658b7103474047c7f6ed736dc6b177ee8098231cd8e2d26d10eedf640f0a0f"
  end

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-fx-jdk#{version.before_comma}-macosx_#{arch}.dmg",
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

  depends_on macos: ">= :sierra"

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
