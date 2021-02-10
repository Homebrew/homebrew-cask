cask "turbovnc-viewer" do
  version "2.2.5"
  sha256 "912277534d5df0e648c19b27e9c3a23380a71a9d6ad5cef2fb87f3e65a77185a"

  url "https://downloads.sourceforge.net/turbovnc/#{version}/TurboVNC-#{version}.dmg",
      verified: "sourceforge.net/turbovnc/"
  appcast "https://sourceforge.net/projects/turbovnc/rss"
  name "TurboVNC"
  homepage "https://www.turbovnc.org/"

  pkg "TurboVNC.pkg"

  uninstall pkgutil: "com.virtualgl.turbovnc",
            script:  {
              executable: "/opt/TurboVNC/bin/uninstall",
              sudo:       true,
            }

  caveats do
    depends_on_java "8"
  end
end
