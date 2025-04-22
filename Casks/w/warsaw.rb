cask "warsaw" do
  version :latest
  sha256 :no_check

  url "https://cloud.gastecnologia.com.br/bb/downloads/ws/warsaw_setup.pkg",
      verified: "cloud.gastecnologia.com.br/bb/downloads/ws/"
  name "Warsaw"
  desc "Security software for online banking in Brazil"
  homepage "https://www.topazevolution.com/"

  pkg "warsaw_setup.pkg"

  uninstall script:  {
              executable: "/usr/local/bin/warsaw/uninstall.sh",
              sudo:       true,
            },
            pkgutil: "com.gastecnologia.warsaw"
end
