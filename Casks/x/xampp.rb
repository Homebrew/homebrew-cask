cask "xampp" do
  version "8.2.4-0"
  sha256 "eb9888f2e3b131ae9a5fbec063a6b642a7285e065a8e5f5e97c699b71e2d7ac5"

  url "https://downloads.sourceforge.net/xampp/xampp-osx-#{version}-installer.dmg",
      verified: "downloads.sourceforge.net/xampp/"
  name "XAMPP"
  desc "Apache distribution containing MySQL, PHP, and Perl"
  homepage "https://www.apachefriends.org/index.html"

  livecheck do
    url "https://www.apachefriends.org/download.html"
    regex(%r{href=.*?/xampp[._-]osx[._-]v?(\d+(?:\.\d+)+-\d+)[._-]installer\.dmg}i)
  end

  conflicts_with cask: "xampp@7"

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

  # No zap stanza required
end
