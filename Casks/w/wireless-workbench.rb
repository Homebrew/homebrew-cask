cask "wireless-workbench" do
  version "7.8.1,56"
  sha256 "d543614acf0b8a9293dae4859f8ccd73f7eace9e92c8d34ba7ab1ab6353959fe"

  url "https://content-files.shure.com/Software/wireless-workbench/#{version.csv.first.dots_to_hyphens}/Wireless-Workbench-macOS-#{version.csv.first}#{".#{version.csv.second}" if version.csv.second}.pkg"
  name "Wireless Workbench"
  desc "Desktop app for RF coordination and wireless system management"
  homepage "https://www.shure.com/en-US/products/software/wwb?variant=WWB"

  livecheck do
    url "https://www.shure.com/en-US/sw/wwb-mac"
    regex(/Wireless[._-]Workbench(?:[._-]macOS)?[._-]v?(\d+(?:\.\d+){1,2})((?:\.\d+)*)?\.pkg/)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next unless match

      match[2].present? ? "#{match[1]},#{match[2].delete_prefix(".")}" : match[1]
    end
  end

  depends_on macos: ">= :ventura"

  pkg "Wireless-Workbench-macOS-#{version.csv.first}#{".#{version.csv.second}" if version.csv.second}.pkg"

  uninstall pkgutil: "com.shure.WWB"

  zap trash: "/Library/Preferences/com.shure.WWB.plist"
end
