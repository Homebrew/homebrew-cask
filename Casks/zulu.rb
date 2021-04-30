cask "zulu" do
  version "16.0.0,16.28.11-ca"

  if Hardware::CPU.intel?
    sha256 "be159c6b98e23b2d5de0006b0c5f06ca9a35ecc6e5d2a8b1b3b19c55cf608d5d"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  else
    sha256 "c60b1b09f68f8ed38754a0d14c5ea45e4c9c81fdf4638030ed15cb895cb7eaf7"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_aarch64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  end

  name "Azul Zulu Java Standard Edition Development Kit"
  homepage "https://www.azul.com/downloads/zulu/zulu-mac/"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&ext=dmg&os=macos"
    strategy :page_match do |page|
      match = page.match(%r{url"\s*:\s*"https:.*?/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)*)-macos}i)
      "#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: ">= :sierra"

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
