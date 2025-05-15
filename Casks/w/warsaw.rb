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
<<<<<<< HEAD
              "com.topazofd.warsaw",
              "com.topazofd.warsaw.user",
            ],
            pkgutil:   "com.topazofd.warsaw"
=======
                "com.topazofd.warsaw",
                "com.topazofd.warsaw.user",
              ],
              script:    {
                executable: "/usr/local/bin/warsaw/uninstall.sh",
                sudo:       true,
              },
              pkgutil:   "com.topazofd.warsaw"
                     
>>>>>>> 2f10d2cc1db (Fix uninstall)
end
