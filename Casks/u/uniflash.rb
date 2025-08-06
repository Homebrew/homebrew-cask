cask "uniflash" do
  version "9.2.0.5300"
  sha256 "d36dfccae49a96f3bf690c6b8d9886c1b4b9691d3143e32884649b8cd0da85e0"

  url "https://dr-download.ti.com/software-development/software-programming-tool/MD-QeJBJLj8gq/#{version.major_minor_patch}/uniflash_sl.#{version}.dmg"
  name "TI UniFlash"
  desc "Flash tool for microcontrollers"
  homepage "https://www.ti.com/tool/UNIFLASH"

  livecheck do
    url :homepage
    regex(/href=.*?uniflash_sl\.(\d+(?:\.\d+)+)\.dmg/i)
  end

  installer script: {
    executable: "uniflash_sl.#{version}.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--prefix", "/Applications/TI/UniFlash"],
  }
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/dslite"
  binary shimscript

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '/Applications/TI/UniFlash/dslite.sh' "$@"
    EOS
  end

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
