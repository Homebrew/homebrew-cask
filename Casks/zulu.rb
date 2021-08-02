cask "zulu" do
  if Hardware::CPU.intel?
    version "16.0.2,16.32.15-ca"
    sha256 "59dcf9c1c5ac4acbf27319c2dfb38fd26c97663dbac1a1d931fb94cec6864de2"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"

    livecheck do
      url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&ext=dmg&os=macos&arch=x86"
      strategy :page_match do |page|
        match = page.match(%r{url"\s*:\s*"https:.*?/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)*)-macos}i)
        "#{match[2]},#{match[1]}"
      end
    end
  else
    version "16.0.1,16.30.19-ca"
    sha256 "4b00a4675cd2d467af3de06d60821e3cdb25c646e48d0c8a349992f1f8509eab"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_aarch64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"

    livecheck do
      url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&ext=dmg&os=macos&arch=arm"
      strategy :page_match do |page|
        match = page.match(%r{url"\s*:\s*"https:.*?/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)*)-macos}i)
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
