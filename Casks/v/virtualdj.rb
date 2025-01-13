cask "virtualdj" do
  version "2025,8502,6BC7040F"
  sha256 "3b8eec632d4ded32dbc76464e375de072f3471e0b9227d2e3b49e6452e713e85"

  url "https://download.virtualdj.com/b#{version.csv.second}/#{version.csv.third}/install_virtualdj_#{version.csv.first}_b#{version.csv.second}_mac.pkg"
  name "VirtualDJ"
  desc "DJ Software"
  homepage "https://virtualdj.com/"

  livecheck do
    url "https://virtualdj.com/download/mac"
    regex(%r{/([^/]+)/install[._-]virtualdj[._-]v?(\d+(?:\.\d+)*)[._-]b(\d+)[._-]mac\.pkg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[3]},#{match[1]}"
    end
  end

  pkg "install_virtualdj_#{version.csv.first}_b#{version.csv.second}_mac.pkg"

  uninstall pkgutil: "com.atomixproductions.com.virtualdj8.VirtualDJ.pkg"

  zap trash: [
    "~/Library/Application Support/VirtualDJ",
    "~/Library/Caches/com.atomixproductions.virtualdj",
    "~/Library/HTTPStorages/com.atomixproductions.virtualdj.binarycookies",
    "~/Library/Saved Application State/com.atomixproductions.virtualdj.savedState",
    "~/Library/WebKit/com.atomixproductions.virtualdj",
  ]
end
