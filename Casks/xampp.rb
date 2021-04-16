cask "xampp" do
  version "7.4.16,0"
  sha256 "be2ae9f742249b4d8f474b5cc320478813a0495b604671fd27d4c6f72963e839"

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
