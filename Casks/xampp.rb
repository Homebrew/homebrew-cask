cask "xampp" do
  version "7.4.14,0"
  sha256 "3e2693e3920e1e67545d42c726e6bba883fe2ec550e9c5a6fa1ceb0fc0118a73"

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
