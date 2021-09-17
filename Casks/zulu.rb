cask "zulu" do
  version "17.0.0,17.28.13-ca"

  if Hardware::CPU.intel?
    sha256 "88cbb8084dacbcf9d2e9a4ae6bff43a8e833aa4b5fd58a19ef5647892a9efe10"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"

    livecheck do
      url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&bundle_type=jdk&javafx=false&ext=dmg&os=macos&arch=x86"
      strategy :page_match do |page|
        match = page.match(/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)*)-macosx_x64\.dmg/i)
        "#{match[2]},#{match[1]}"
      end
    end
  else
    sha256 "2b15b8243781b8c8f03d0391ab5a2d93a380db88222dad5e0e90de0dcb472968"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_aarch64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"

    livecheck do
      url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&bundle_type=jdk&javafx=false&ext=dmg&os=macos&arch=arm"
      strategy :page_match do |page|
        match = page.match(/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)*)-macosx_aarch64\.dmg/i)
        "#{match[2]},#{match[1]}"
      end
    end
  end

  name "Azul Zulu Java Standard Edition Development Kit"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/downloads/"

  depends_on macos: ">= :sierra"

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
