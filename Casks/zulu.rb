cask "zulu" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "17.0.0,17.28.13-ca"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_#{arch}.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  if Hardware::CPU.intel?
    sha256 "88cbb8084dacbcf9d2e9a4ae6bff43a8e833aa4b5fd58a19ef5647892a9efe10"
  else
    sha256 "2b15b8243781b8c8f03d0391ab5a2d93a380db88222dad5e0e90de0dcb472968"
  end

  name "Azul Zulu Java Standard Edition Development Kit"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/downloads/"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&bundle_type=jdk&javafx=false&ext=dmg&os=macos"
    strategy :page_match do |page|
      match = page.match(/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)*)-macosx_(aarch64|x64)\.dmg/i)
      "#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: ">= :sierra"

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
