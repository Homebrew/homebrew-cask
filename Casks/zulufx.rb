cask "zulufx" do
  version "15.0.4,15.34.17-ca"

  if Hardware::CPU.intel?
    sha256 "776fc9a3e9d71497a3368bb49f58bacb04fa97c9964c26ff2a54631dc89e3054"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-fx-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/"
  else
    sha256 "71cc95214219f8dddc0674cbfdd56ced99007727a99c6f31a2645efccafc2d0b"

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

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
