cask "virtualdj" do
  version "2026,9295,D0AD584E"
  sha256 "b7b58f72aeb3fb1ad7a5fac2c4be71cb368e328d4fd6eeb2e33d319b0b5fa582"

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
