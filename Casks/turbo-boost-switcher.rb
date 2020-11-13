cask "turbo-boost-switcher" do
  version "2.10.1"
  sha256 "edc40e912008c39bd3e9b69e20931c46cc15ee016d49972eeda7216d0a602f1f"

  # turbo-boost-switcher.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://turbo-boost-switcher.s3.amazonaws.com/Turbo_Boost_Switcher_v#{version}.dmg"
  appcast "https://www.rugarciap.com/turbo-boost-switcher-for-os-x-blog/"
  name "Turbo Boost Switcher"
  desc "Enable and disable the Intel CPU Turbo Boost feature"
  homepage "https://www.rugarciap.com/turbo-boost-switcher-for-os-x/"

  # App renamed to remove "(English)" suffix
  app "Turbo Boost Switcher.app"

  uninstall quit: "rugarciap.com.Turbo-Boost-Switcher",
            kext: "com.rugarciap.DisableTurboBoost"

  zap trash: "~/Library/Preferences/rugarciap.com.Turbo-Boost-Switcher.plist"
end
