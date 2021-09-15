cask "zulu" do
  version "16.0.2,16.32.15-ca"

  if Hardware::CPU.intel?
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
    sha256 "f6c6ff8d6afdb45040ef8dac4b0c0798f4938bd10e82b0edd54bfd58e8b74032"

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
