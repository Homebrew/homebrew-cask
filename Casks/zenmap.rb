cask "zenmap" do
  version "7.90"
  sha256 "abf5c6abd9d006bca12aed2fa92d86343e2b76cff4a574f8b444b253339fdc83"

  url "https://nmap.org/dist/nmap-#{version}.dmg"
  appcast "https://nmap.org/dist/?C=M&O=D"
  name "Zenmap"
  desc "Multi-platform graphical interface for official Nmap Security Scanner"
  homepage "https://nmap.org/zenmap/"

  depends_on formula: "nmap"

  pkg "nmap-#{version}.mpkg",
      choices: [
        {
          "choiceIdentifier" => "org.insecure.nmap",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "org.insecure.nmap.ncat",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "org.insecure.nmap.ndiff",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "org.insecure.nmap.nping",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "org.insecure.nmap.nmap-update",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "org.insecure.nmap.zenmap",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: "org.insecure.nmap.zenmap"

  zap trash: [
    "~/Library/Saved Application State/org.insecure.Zenmap.savedState",
    "~/.zenmap",
  ]
end
