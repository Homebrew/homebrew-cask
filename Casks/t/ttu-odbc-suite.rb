cask "ttu-odbc-suite" do
  version "20.00.07.00,2024-02"
  sha256 "3e27d0fa7462d899ae2e9097e6ee170f26837aeb0e7fbf766186747490dd70a8"

  url "https://downloads.teradata.com/sites/default/files/#{version.csv.second}/TeradataODBC-macosx-brew-#{version.csv.first}.tar"
  name "Teradata Tools and Utilities"
  desc "ODBC Driver for Teradata"
  homepage "https://downloads.teradata.com/TeradataToolsAndUtilities_macOSBrew"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+(?:-\d+)+)/TeradataODBC-macosx-brew[._-]v?(\d+(?:\.\d+)+)\.t}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :catalina"

  pkg "TeradataODBC#{version.csv.first}.pkg"

  uninstall pkgutil: [
    "com.Teradata.teradataToolsAndUtilities2000.pkg.odbc",
    "com.Teradata.teradataToolsAndUtilities2000.pkg.ttulistproducts",
    "com.Teradata.teradataToolsAndUtilities2000.pkg.ttuuninstaller"
  ]

  zap trash: "~/Library/Saved Application State/com.teradata.TTUListProducts.savedState"

  caveats do
    license "https://downloads.teradata.com/download/license/download-agreement-teradata-tools-utilities"
  end
end
