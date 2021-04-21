cask "xampp" do
  version "7.4.15,0"
  sha256 "f12ef61f550627e4c0b735b69728ac6e7d37dad617f61098f6f541d61a0dd316"

  url "https://downloadsapachefriends.global.ssl.fastly.net/xampp-files/#{version.before_comma}/xampp-osx-#{version.before_comma}-#{version.after_comma}-installer.dmg",
      verified: "downloadsapachefriends.global.ssl.fastly.net/xampp-files/"
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
