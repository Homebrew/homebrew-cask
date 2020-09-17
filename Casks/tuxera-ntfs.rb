cask "tuxera-ntfs" do
  version "2019"
  sha256 "ac655a302afbbe2022ec9c2af3df65e8bcd1bb66a783770025f78f3595a2798f"

  url "https://tuxera.com/mac/tuxerantfs_#{version}.dmg"
  appcast "https://ntfsformac.tuxera.com/get/",
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
