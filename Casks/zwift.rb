cask "zwift" do
  version "1.1.2"
  sha256 :no_check

  url "https://cdn.zwift.com/app/ZwiftOSX.dmg"
  name "Zwift"
  desc "Indoor cycling game"
  homepage "https://www.zwift.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "ZwiftInstaller.pkg"

  uninstall quit:    "com.zwift.ZwiftLauncher",
            pkgutil: "com.zwift.ZwiftLauncher"

  zap trash: "~/Library/Application Support/Zwift"
end
