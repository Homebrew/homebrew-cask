cask "warsaw" do
  version :latest
  sha256 :no_check

  url "https://cloud.gastecnologia.com.br/bb/downloads/ws/warsaw_setup.pkg",
      verified: "cloud.gastecnologia.com.br/bb/downloads/ws/"
  name "Warsaw"
  desc "Security software for online banking in Brazil"
  homepage "https://www.topazevolution.com/"

  pkg "warsaw_setup.pkg"

  uninstall launchctl: [
              "com.topazofd.warsaw",
              "com.topazofd.warsaw.user",
            ],
            pkgutil:   "com.topazofd.warsaw"
 
  zap trash: [
    "~/Library/LaunchDaemons/com.topazofd.warsaw.plist",
    "~/Library/LaunchAgents/com.topazofd.warsaw.user.plist",
    "~/Library/Fonts/dbldwrsw.ttf",
    "~/usr/local/etc/warsaw",
    "~/usr/local/lib/warsaw",
    "~/usr/local/bin/warsaw",
    "~/tmp/wi*",
    "~/tmp/boost_interprocess",
    "~/tmp/upd",
    "~/tmp/dbd",
    "~/private/tmp/wi*",
    "~/private/tmp/boost_interprocess",
    "~/WS_*"
  ]

end
