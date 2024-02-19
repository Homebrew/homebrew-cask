cask "ttu-base-suite" do
  version "20.00.07.00,2024-02"
  sha256 "052d354f4cf40a876155e193457261a13588576b03053c7defa265826cf7aeff"

  url "https://downloads.teradata.com/sites/default/files/#{version.csv.second}/TeradataToolsAndUtilities-macosx-brew-#{version.csv.first}.tar"
  name "Teradata Tools and Utilities"
  desc "Collection of Teradata client tools"
  homepage "https://downloads.teradata.com/TeradataToolsAndUtilities_macOSBrew"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+(?:-\d+)+)/TeradataToolsAndUtilities-macosx-brew[._-]v?(\d+(?:\.\d+)+)\.t}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :catalina"

  installer script: {
    executable: "silent-install.sh",
    sudo:       true,
  }

  uninstall script:  {
              executable: "silent-uninstall.sh",
              args:       ["BASE"],
              sudo:       true,
            },
            pkgutil: "com.Teradata.*2000.pkg.ttuuninstaller"

  zap trash: "~/Library/Saved Application State/com.teradata.TTUListProducts.savedState"
end
