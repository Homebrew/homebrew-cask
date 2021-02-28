cask "zulu" do
  version "15.0.2,15.29.15-ca"

  if Hardware::CPU.intel?
    sha256 "6284c7fb89cbbc8552788a3db522f6226a64d84454d21e075558c050328f6ed7"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  else
    sha256 "599c3399eb6edb824f4660ba0a4fbb52118458041700dc71aec891bd383910e5"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_aarch64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  end

  name "Azul Zulu Java Standard Edition Development Kit"
  homepage "https://www.azul.com/downloads/zulu/zulu-mac/"

  livecheck do
    url "https://api.azul.com/zulu/download/community/v1.0/bundles/latest/?jdk_version=#{version.major}&ext=dmg&os=macos"
    strategy :page_match do |page|
      match = page.match(/url"\s*:\s*"https:.*?/zulu(.*?)-jdk(.*?)-macos/i)
      "#{match[1]},#{match[0]}"
    end
  end

  depends_on macos: ">= :sierra"

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
