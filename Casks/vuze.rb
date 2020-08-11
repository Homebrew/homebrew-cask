cask "vuze" do
  version :latest
  sha256 :no_check

  url "https://cf1.vuze.com/files/J7/VuzeBittorrentClientInstaller.dmg"
  name "Vuze"
  desc "Bit torrent client"
  homepage "https://www.vuze.com/"

  installer script: {
    executable: "Vuze Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
    sudo:       true,
  }

  uninstall delete: "/Applications/Vuze.app"

  zap trash: "~/Library/Application Support/Vuze"
end
