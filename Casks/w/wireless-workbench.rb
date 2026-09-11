cask "wireless-workbench" do
  version "7.8.3,18"
  sha256 "71c8a030689a4faee8d611022d69ba99c80bf15b138c6538bf2d032e38a4ac1e"

  url "https://content-files.shure.com/Software/wireless-workbench/#{version.csv.first.dots_to_hyphens}/ShureWWB_x64-mac.#{version.csv.first}#{".#{version.csv.second}" if version.csv.second}.pkg"
  name "Wireless Workbench"
  desc "Desktop app for RF coordination and wireless system management"
  homepage "https://www.shure.com/en-US/products/software/wwb?variant=WWB"

  livecheck do
    url "https://www.shure.com/en-US/sw/wwb-mac"
    regex(/ShureWWB(?:_x64)?-mac\.(\d+(?:\.\d+){1,2})((?:\.\d+)*)?\.pkg/)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next unless match

      match[2].present? ? "#{match[1]},#{match[2].delete_prefix(".")}" : match[1]
    end
  end

  depends_on macos: :ventura

  pkg "ShureWWB_x64-mac.#{version.csv.first}#{".#{version.csv.second}" if version.csv.second}.pkg"

  uninstall pkgutil: "com.shure.WWB"

  zap trash: "/Library/Preferences/com.shure.WWB.plist"
end
