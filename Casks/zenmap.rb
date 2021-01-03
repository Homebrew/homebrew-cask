cask "zenmap" do
  version "7.91"
  sha256 "6446cc4d52ac3c2818f6c9cbf34473be726d3fdbb7fb8c315f0149787b7303d0"

  url "https://nmap.org/dist/nmap-#{version}.dmg"
  appcast "https://nmap.org/dist/?C=M&O=D"
  name "Zenmap"
  desc "Multi-platform graphical interface for official Nmap Security Scanner"
  homepage "https://nmap.org/zenmap/"

  livecheck do
    url "https://nmap.org/dist/"
    regex(/href=.*?nmap[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

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
