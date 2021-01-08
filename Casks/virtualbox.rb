cask "virtualbox" do
  version "6.1.16-140961"
  sha256 "d7df0f05d9a9e7cba50ea01da264ac20948b1c9c0e0cccd2d628085c9f434d45"

  url "https://download.virtualbox.org/virtualbox/#{version.split("-").first}/VirtualBox-#{version}-OSX.dmg"
  name "Oracle VirtualBox"
  desc "Free and open-source hosted hypervisor for x86 virtualization"
  homepage "https://www.virtualbox.org/"

  livecheck do
    url "https://www.virtualbox.org/download/hashes/#{version.split("-").first}/SHA256SUMS"
    strategy :page_match
    regex(/(\d+(?:\.\d+)*)/)
  end

  conflicts_with cask: "virtualbox-beta"

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
    # If VirtualBox is installed before `/usr/local/lib/pkgconfig` is created by Homebrew, it creates it itself
    # with incorrect permissions that break other packages
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
