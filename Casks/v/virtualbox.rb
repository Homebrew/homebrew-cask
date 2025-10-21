cask "virtualbox" do
  arch arm: "macOSArm64", intel: "OSX"

  version "7.2.4,170995"
  sha256 arm:   "cef88951ef9da5e609724dca5d50ca8cc898f5f9f29ace529ca9b95305006fdd",
         intel: "f724ebec6ca738bf21cb55e8693092fce2bc0e63d9c2d81877d460bc84f66279"

  on_arm do
    desc "Virtualiser for arm64 hardware"
  end
  on_intel do
    desc "Virtualiser for x86 hardware"
  end

  url "https://download.virtualbox.org/virtualbox/#{version.csv.first}/VirtualBox-#{version.csv.first}-#{version.csv.second}-#{arch}.dmg"
  name "Oracle VirtualBox"
  homepage "https://www.virtualbox.org/"

  livecheck do
    url "https://www.virtualbox.org/wiki/Downloads"
    regex(/href=.*?VirtualBox[._-]v?(\d+(?:\.\d+)+)[._-](\d+)[._-]OSX\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: [
    "virtualbox@6",
    "virtualbox@beta",
  ]

  pkg "VirtualBox.pkg",
      choices: [
        {
          "choiceIdentifier" => "choiceVBox",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "choiceVBoxCLI",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  postflight do
    # If VirtualBox is installed before `/usr/local/lib/pkgconfig` is created by Homebrew,
    # it creates it itself with incorrect permissions that break other packages.
    # See https://github.com/Homebrew/homebrew-cask/issues/68730#issuecomment-534363026
    set_ownership "/usr/local/lib/pkgconfig"
  end

  uninstall script:  {
              executable: "VirtualBox_Uninstall.tool",
              args:       ["--unattended"],
              sudo:       true,
            },
            pkgutil: "org.virtualbox.pkg.*",
            delete:  "/usr/local/bin/vboximg-mount"

  zap trash: [
        "/Library/Application Support/VirtualBox",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualbox*",
        "~/Library/Preferences/org.virtualbox.app.VirtualBox*",
        "~/Library/Saved Application State/org.virtualbox.app.VirtualBox*",
        "~/Library/VirtualBox",
      ],
      rmdir: "~/VirtualBox VMs"
end
