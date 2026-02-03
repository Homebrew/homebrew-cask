cask "wireless-workbench" do
  version "7.8.0"
  sha256 "c2abb9f1eedd6f44589acc0994a7220136d8adb8309c67c0813b7e2aff3d271c"

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
