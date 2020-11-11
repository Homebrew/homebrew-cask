cask "zoolz" do
  version :latest
  sha256 :no_check

  url "https://downloads.zoolz.com/zoolz2/Zoolz.pkg"
  name "Zoolz"
  desc "Client for the Zoolz cloud storage service"
  homepage "https://home.zoolz.com/"

  pkg "Zoolz.pkg"

  uninstall quit:       "Zoolz",
            login_item: "Zoolz",
            pkgutil:    "ZoolzInstaller",
            delete:     "/Applications/ZoolzRestore.app"

  zap trash: "~/.config/Genie9/Zoolz"
end
