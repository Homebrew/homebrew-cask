cask "virtualbox@beta" do
  arch arm: "macOSArm64", intel: "OSX"
  desc_arch = on_arch_conditional arm: "arm64", intel: "x86"

  version "7.2.5-172125"
  sha256 arm:   "84171f48fb3ff70a899c96ae2abddc16b6be3f3a698635e10da732ae36ad0510",
         intel: "bc52210df5fc6ae71bca28e90a29d5f87aa82c25c5b05c8da753f47dcc7cedb7"

  url "https://www.virtualbox.org/download/testcase/VirtualBox-#{version}-#{arch}.dmg"
  name "Oracle VirtualBox"
  desc "Virtualiser for #{desc_arch} hardware"
  homepage "https://www.virtualbox.org/wiki/Testbuilds"

  livecheck do
    url :homepage
    regex(/href=.*?VirtualBox[._-]v?(\d+(?:[.-]\d+)+.*?)[._-]#{arch}\.dmg(?!.+?development)/i)
  end

  conflicts_with cask: [
    "virtualbox",
    "virtualbox@6",
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
