cask "wireless-workbench" do
  version "7.7.0"
  sha256 "1e982c3f1425b9c0fda7aa045984236c0c6a56b288ffb3d1dc723a6a075353e8"

  url "https://content-files.shure.com/Software/wireless-workbench/#{version.dots_to_hyphens}/Wireless-Workbench-macOS-#{version}.pkg"
  name "Wireless Workbench"
  desc "Desktop app for RF coordination and wireless system management"
  homepage "https://www.shure.com/en-US/products/software/wwb?variant=WWB"

  livecheck do
    url "https://www.shure.com/en-US/sw/wwb-mac"
    strategy :header_match
  end

  depends_on macos: ">= :ventura"

  pkg "Wireless-Workbench-macOS-#{version}.pkg"

  uninstall pkgutil: "com.shure.WWB"

  zap trash: "/Library/Preferences/com.shure.WWB.plist"
end
