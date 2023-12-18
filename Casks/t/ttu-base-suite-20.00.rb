cask "ttu-base-suite-20.00" do
  depends_on macos: ">= :catalina"

  version "20.00.04.00"
  sha256 "663e8bd8f66f11fa35face2860a38de5a77f38b2954db93f5dc2db0b0cfb86ae"

  name "TTU BASE Suite #{version}"
  desc "Teradata Tools and Utilities BASE Suite #{version}"

  url "https://downloads.teradata.com/sites/default/files/2023-12/TeradataToolsAndUtilities-macosx-brew-20.00.04.00.tar"

  installer script: {
              executable: "silent-install.sh",
              args:       ["ttu-base-suite-20.00"],
              sudo:       true
            }

  uninstall script: {
              executable: "silent-uninstall.sh",
              args:       ["BASE"],
              sudo:       true
            },
            pkgutil: "com.Teradata.*2000.pkg.ttuuninstaller"
end
