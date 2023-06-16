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

  uninstall pkgutil: "org.insecure.nmap.zenmap",
            delete:  "/Applications/Zenmap.app"

  zap trash: [
    "~/Library/Saved Application State/org.insecure.Zenmap.savedState",
    "~/.zenmap",
  ]
end
