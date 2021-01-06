cask "tuxera-ntfs" do
  version "2020"
  sha256 :no_check

  url "https://tuxera.com/mac/tuxerantfs_#{version}.dmg"
  appcast "https://ntfsformac.tuxera.com/",
          must_contain: "tuxerantfs_#{version}.dmg"
  name "Tuxera NTFS"
  desc "File system and storage management software"
  homepage "https://ntfsformac.tuxera.com/"

  pkg ".packages/Flat/Install Tuxera NTFS.mpkg"

  uninstall quit:    "com.tuxera.Tuxera-NTFS",
            pkgutil: [
              "com.tuxera.pkg.Tuxera_NTFS",
              "com.tuxera.pkg.Tuxera_NTFS_compat",
            ]
end
