cask "uniflash" do
  version "6.3.0.3193"
  sha256 "3a46f28f41125310c7a608540bc53db4dd27bd7eaed2012357ff26e12176d113"

  url "https://downloads.ti.com/ccs/esd/uniflash/uniflash_sl.#{version}.dmg"
  name "TI UniFlash"
  desc "Flash tool for microcontrollers"
  homepage "https://www.ti.com/tool/UNIFLASH"

  livecheck do
    url :homepage
    regex(%r{href=.*?/uniflash_sl\.(\d+(?:\.\d+)*)\.dmg}i)
  end

  installer script: {
    executable: "uniflash_sl.#{version}.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--prefix", "/Applications/TI/UniFlash"],
  }
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/dslite"
  binary shimscript

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '/Applications/TI/UniFlash/dslite.sh' "$@"
    EOS
  end

  uninstall script: {
    executable: "/Applications/TI/UniFlash/uninstall.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }
end
