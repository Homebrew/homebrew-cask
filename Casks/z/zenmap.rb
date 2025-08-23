cask "zenmap" do
  version "7.98"
  sha256 "461bb256780aa8c5e76f95010b780e5fd58743dd74432b17c97a1ca525722b7b"

  url "https://nmap.org/dist/nmap-#{version}.dmg"
  name "Zenmap"
  desc "Multi-platform graphical interface for official Nmap Security Scanner"
  homepage "https://nmap.org/zenmap/"

  livecheck do
    url "https://nmap.org/download.html"
    regex(/href=.*?nmap[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
