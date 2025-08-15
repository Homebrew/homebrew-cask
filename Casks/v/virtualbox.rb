cask "virtualbox" do
  arch arm: "macOSArm64", intel: "OSX"

  version "7.2.0,170228"
  sha256 arm:   "d36e5adf32def56d51b3bffda3c40f03d4443f15c73c9783ff3e3158bb0faed3",
         intel: "b11619ad3749e377ff7a31df4728579ec403801c3a98b9ecf7cb580b20d7af7b"

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
  depends_on macos: ">= :catalina"

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
