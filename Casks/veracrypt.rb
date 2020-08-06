cask "veracrypt" do
  version "1.24-Update4"
  sha256 "e84d3836d46612783248bb70225791374b7c3b68e32d1171159ed4dcf1fd3624"

  # launchpad.net/veracrypt/trunk/ was verified as official when first introduced to the cask
  url "https://launchpad.net/veracrypt/trunk/#{version.downcase}/+download/VeraCrypt_#{version}.dmg"
  appcast "https://github.com/veracrypt/VeraCrypt/releases.atom"
  name "VeraCrypt"
  homepage "https://www.veracrypt.fr/"

  depends_on cask: "osxfuse"

  pkg "VeraCrypt_Installer.pkg"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/veracrypt.wrapper.sh"
  binary shimscript, target: "veracrypt"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/VeraCrypt.app/Contents/MacOS/VeraCrypt' "$@"
    EOS
  end

  uninstall pkgutil: "com.idrix.pkg.veracrypt"
end
