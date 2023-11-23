cask "ttu-base-suite-20.00" do
  depends_on macos: ">= :catalina"

  version "20.00.03.00"
  sha256 "8ee6706b4fb0ec75d411354422f0adf4bd1c65ec567bc920749430d9b05a7c3e"

  name "TTU BASE Suite #{version}"
  desc "Teradata Tools and Utilities BASE Suite #{version}"

  url "http://10.27.69.192/20.00/macOS/arm64+x8664/TeradataToolsAndUtilities-macosx-brew-20.00.03.00.tar"

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
