cask "zulu" do
  if Hardware::CPU.intel?
    version "15.0.2,15.29.15-ca"
    sha256 "6284c7fb89cbbc8552788a3db522f6226a64d84454d21e075558c050328f6ed7"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  else
    version "15.0.1,15.28.1013-ca"
    sha256 "055a493236ed0023216f40d4e222ebc9cebd13bcaa8288d9f6c6c5c2d61f30ee"

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_aarch64.dmg",
        referer: "https://www.azul.com/downloads/zulu/zulu-mac/"
  end

  name "Azul Zulu Java Standard Edition Development Kit"
  homepage "https://www.azul.com/downloads/zulu/zulu-mac/"

  depends_on macos: ">= :sierra"

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
