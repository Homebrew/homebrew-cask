cask "zwift" do
  version "1.0,25"
  sha256 :no_check

  url "https://cdn.zwift.com/app/ZwiftOSX.dmg"
  name "Zwift"
  homepage "https://www.zwift.com/"

  pkg "ZwiftInstaller.pkg"

  uninstall quit:    "com.zwift.ZwiftLauncher",
            pkgutil: "com.zwift.ZwiftLauncher"

  zap trash: "~/Library/Application Support/Zwift"
end
