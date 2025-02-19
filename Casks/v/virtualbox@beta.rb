cask "virtualbox@beta" do
  arch arm: "macOSArm64", intel: "OSX"

  version "7.1.7-167625"
  sha256 arm:   "d0b72df74ca38443a31eb542cfa1da633fb1ba621108ed8793218e57e221268f",
         intel: "ec509c7d44258af2c031962c28c92dc324ff9e27590ff7cf39fc9bea3382b68a"

  url "https://www.virtualbox.org/download/testcase/VirtualBox-#{version}-#{arch}.dmg"
  name "Oracle VirtualBox"
  desc "Virtualizer for x86 and arm64 hardware"
  homepage "https://www.virtualbox.org/wiki/Testbuilds"

  livecheck do
    url :homepage
    regex(/href=.*?VirtualBox[._-]v?(\d+(?:[.-]\d+)+.*?)[._-]#{arch}\.dmg(?!.+?development)/i)
  end

  conflicts_with cask: [
    "virtualbox",
    "virtualbox@6",
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
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualbox.sfl*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualboxvm.sfl*",
        "~/Library/Preferences/org.virtualbox.app.VirtualBox.plist",
        "~/Library/Preferences/org.virtualbox.app.VirtualBoxVM.plist",
        "~/Library/Saved Application State/org.virtualbox.app.VirtualBox.savedState",
        "~/Library/Saved Application State/org.virtualbox.app.VirtualBoxVM.savedState",
        "~/Library/VirtualBox",
      ],
      rmdir: "~/VirtualBox VMs"

  caveats do
    kext
  end
end
