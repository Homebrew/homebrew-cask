cask "zulufx" do
  version "15.0.3,15.32.15-ca"

  if Hardware::CPU.intel?
    sha256 "1190fdfe30ce1c6a1e746084a9e325a045fbf63ba0cc2dde3ccb74959e3a38b0"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-fx-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/"
  else
    sha256 "50c6b1ddb154ba743da3851d09ff87e063dab096d5350c2e4a74f7e1cdfa976a"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-fx-jdk#{version.before_comma}-macosx_aarch64.dmg",
        referer: "https://www.azul.com/downloads/"
  end

  name "ZuluFX"
  desc "Azul ZuluFX Java Standard Edition Development Kit"
  homepage "https://www.azul.com/downloads/"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&ext=dmg&os=macos"
    strategy :page_match do |page|
      match = page.match(%r{url"\s*:\s*"https:.*?/zulu(\d+(?:\.\d+)*-.*?)-jdk(\d+(?:\.\d+)*)-macos}i)
      "#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: ">= :sierra"

  pkg "Double-Click to Install ZuluFX #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
