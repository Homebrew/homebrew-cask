cask "virtualbox" do
  version "6.1.26,145957"
  sha256 "c544b8500e7e0cc397a38c6210f4a1cf3f0cc30c9463bc61fb10c713a9c36ecc"

  url "https://download.virtualbox.org/virtualbox/#{version.before_comma}/VirtualBox-#{version.before_comma}-#{version.after_comma}-OSX.dmg"
  name "Oracle VirtualBox"
  desc "Free and open-source hosted hypervisor for x86 virtualization"
  homepage "https://www.virtualbox.org/"

  livecheck do
    url "https://www.virtualbox.org/wiki/Downloads"
    strategy :page_match do |page|
      match = page.match(/href=.*?VirtualBox-(\d+(?:\.\d+)*)-(\d+)-OSX.dmg/)
      "#{match[1]},#{match[2]}"
    end
  end

  conflicts_with cask: "homebrew/cask-versions/virtualbox-beta"
  depends_on macos: ">= :high_sierra"

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
