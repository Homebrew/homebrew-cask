cask "vuze" do
  version "5.7.7.0"
  sha256 :no_check

  url "https://cf1.vuze.com/files/J7/VuzeBittorrentClientInstaller.dmg"
  name "Vuze"
  desc "Bit torrent client"
  homepage "https://www.vuze.com/"

  livecheck do
    skip "version is contained in the mounted DMG volume name"
  end

  installer script: {
    executable: "Vuze Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
    sudo:       true,
  }

  uninstall quit:   "com.azureus.vuze",
            delete: [
              "/Applications/Vuze.app",
              "/Applications/Uninstaller for Vuze.app",
            ]

  zap trash: "~/Library/Application Support/Vuze"
end
