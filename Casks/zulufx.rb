cask "zulufx" do
  version "15.0.1,15.28.13-ca"
  sha256 "af3e2d999d240e5549f46cf0155f2fab08c909aab5763f07bbb34c9052160094"

  url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-fx-jdk#{version.before_comma}-macosx_x64.dmg",
      referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  name "Azul ZuluFX"
  desc "OpenJDK Standard Edition Development Kit with JavaFX"
  homepage "https://www.azul.com/downloads/zulu/zulu-mac/"

  depends_on macos: ">= :sierra"

  pkg "Double-Click to Install ZuluFX #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
