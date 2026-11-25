cask "uniflash" do
  version "9.7.1.5912"
  sha256 "604bad88232d837b4e92ab5093bcdc1239def7d2f338a1b86379b91bb492489a"

  url "https://dr-download.ti.com/software-development/software-programming-tool/MD-QeJBJLj8gq/#{version.major_minor_patch}/uniflash_sl.#{version}.dmg"
  name "TI UniFlash"
  desc "Flash tool for microcontrollers"
  homepage "https://www.ti.com/tool/UNIFLASH"

  livecheck do
    url :homepage
    regex(/href=.*?uniflash_sl\.(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  installer script: {
    executable: "uniflash_sl.#{version}.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--prefix", "/Applications/TI/UniFlash"],
  }
  command_wrapper "dslite",
                  executable: "/Applications/TI/UniFlash/dslite.sh"

  uninstall script: {
    executable: "/Applications/TI/UniFlash/uninstall.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  zap trash: [
        "~/.ti/uniflash",
        "~/Library/Application Support/Uniflash",
        "~/Library/Caches/Uniflash",
      ],
      rmdir: "~/.ti"
end
