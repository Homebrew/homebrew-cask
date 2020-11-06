cask "xampp" do
  version "7.4.1,0"
  sha256 "4b0b6829f2b1152193b02e379e6fac8eeb208afb1de6b80b0387f01b61c98cef"

  # downloadsapachefriends.global.ssl.fastly.net/xampp-files/ was verified as official when first introduced to the cask
  url "https://downloadsapachefriends.global.ssl.fastly.net/xampp-files/#{version.before_comma}/xampp-osx-#{version.before_comma}-#{version.after_comma}-installer.dmg"
  name "XAMPP"
  homepage "https://www.apachefriends.org/index.html"

  installer script: {
    executable: "XAMPP.app/Contents/MacOS/osx-x86_64",
    args:       ["--mode", "unattended"],
    sudo:       true,
  }

  uninstall quit:   "com.bitnami.manager",
            script: {
              executable: "/Applications/XAMPP/uninstall.app/Contents/MacOS/osx-x86_64",
              args:       ["--mode", "unattended"],
              sudo:       true,
            },
            delete: "/Applications/XAMPP/"
end
