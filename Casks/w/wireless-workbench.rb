cask "wireless-workbench" do
  version "7.9.0,104"
  sha256 "b432d38b1a7684ed2a29d3e0307bd425a54fb5c52e043f8d313fa06501f4ffe0"

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
