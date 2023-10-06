cask "zenmap" do
  version "7.94"
  sha256 "6f84fe22af583c4ff7822e23a5bf8da7cbdfb3fc529867db671aefc44dd23114"

  url "https://nmap.org/dist/nmap-#{version}.dmg"
  name "Zenmap"
  desc "Multi-platform graphical interface for official Nmap Security Scanner"
  homepage "https://nmap.org/zenmap/"

  livecheck do
    url "https://nmap.org/dist/?C=M;O=D"
    regex(/href=.*?nmap[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  pkg "nmap-#{version}.mpkg"

  uninstall pkgutil: "org.insecure.nmap*",
            delete:  "/Applications/Zenmap.app"

  zap trash: [
    "~/Library/Saved Application State/org.insecure.Zenmap.savedState",
    "~/.zenmap",
  ]
end
