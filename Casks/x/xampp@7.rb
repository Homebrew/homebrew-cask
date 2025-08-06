cask "xampp@7" do
  version "7.4.33-0"
  sha256 "25e198875d734f510dde7a3d3b85762b6a8b7bf50c2272a116a68a6acb9b19f8"

  url "https://downloads.sourceforge.net/xampp/xampp-osx-#{version}-installer.dmg",
      verified: "downloads.sourceforge.net/xampp/"
  name "XAMPP"
  desc "Apache distribution containing MySQL, PHP 7, and Perl"
  homepage "https://www.apachefriends.org/index.html"

  livecheck do
    url "https://sourceforge.net/projects/xampp/rss?path=/XAMPP%20Mac%20OS%20X"
    regex(/xampp[._-]osx[._-]v?(7(?:\.\d+)*-\d+)[._-]installer\.dmg/i)
  end

  conflicts_with cask: "xampp"

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

  zap trash: "~/Library/Saved Application State/com.bitnami.manager.savedState"
end
