cask "zenmap" do
  version "7.97"
  sha256 "144e26db1fca56c9a8fc6d4a6231ab6ca789f532d29dd4d31de04a83fba0c033"

  url "https://nmap.org/dist/nmap-#{version}.dmg"
  name "Zenmap"
  desc "Multi-platform graphical interface for official Nmap Security Scanner"
  homepage "https://nmap.org/zenmap/"

  livecheck do
    url "https://nmap.org/download.html"
    regex(/href=.*?nmap[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  conflicts_with formula: "nmap"

  pkg "nmap-#{version}.mpkg"

  uninstall pkgutil: [
              "org.insecure.nmap",
              "org.insecure.nmap.ncat",
              "org.insecure.nmap.ndiff",
              "org.insecure.nmap.nping",
              "org.insecure.nmap.zenmap",
            ],
            delete:  "/Applications/Zenmap.app"

  zap trash: [
    "~/.zenmap",
    "~/Library/Saved Application State/org.insecure.Zenmap.savedState",
  ]
end
