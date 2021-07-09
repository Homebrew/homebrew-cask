cask "vitals" do
  version "0.3"
  sha256 "5618987b45cc1f77a704ccfa38f2103ea3cdf22578898451aed405f0293ffbad"

  url "https://github.com/hmarr/vitals/releases/download/v#{version}/vitals-v#{version}.zip"
  name "Vitals"
  desc "Tiny process monitor"
  homepage "https://github.com/hmarr/vitals/"

  app "Vitals.app"

  zap trash: [
    "~/Library/Application Scripts/com.hmarr.Vitals-LaunchAtLoginHelper",
    "~/Library/Containers/com.hmarr.Vitals-LaunchAtLoginHelper",
  ]
end
