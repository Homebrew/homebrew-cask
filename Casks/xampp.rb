cask "xampp" do
  version "8.1.12-0"
  sha256 "14e5bd309afde9e24cd2172e9b560ff8330d1a93c59c4b490fb5ed75d092b62e"

  url "https://downloads.sourceforge.net/xampp/xampp-osx-#{version}-installer.dmg",
      verified: "downloads.sourceforge.net/xampp/"
  name "XAMPP"
  desc "Apache distribution containing MySQL, PHP, and Perl"
  homepage "https://www.apachefriends.org/index.html"

  livecheck do
    url "https://www.apachefriends.org/download.html"
    regex(%r{href=.*?/xampp[._-]osx[._-]v?(\d+(?:\.\d+)+-\d+)[._-]installer\.dmg}i)
  end

  installer script: {
    executable: "xampp-osx-#{version}-installer.app/Contents/MacOS/osx-x86_64",
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
