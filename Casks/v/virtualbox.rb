cask "virtualbox" do
  arch arm: "macOSArm64", intel: "OSX"

  version "7.1.12,169651"
  sha256 arm:   "ed202a87de528ace090c1f0d531e8dd4c85da064f3404909e6ff5fe79942e547",
         intel: "2f7e39bd91819afdaa7a9cbc7e831597237664495b28d2c643ea97ee36834ebe"

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
          "choiceIdentifier" => "choiceVBoxKEXTs",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
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
        {
          "choiceIdentifier" => "choiceOSXFuseCore",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
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
