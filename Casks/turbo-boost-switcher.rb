cask "turbo-boost-switcher" do
  version "2.10.0"
  sha256 "a4b0730313503a4c4c45d9be15842ef1d7f383694452204800e3b810e92e96db"

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
