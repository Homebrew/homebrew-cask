cask "yammer" do
  version "3.4.8"
  sha256 "5ccf21ebeeb1d35c334bbe96742aac80cb3ce9b256faee3b48e66bcec72a7a87"

  url "https://yammerdesktopapp.blob.core.windows.net/binaries/dist/darwin/x64/#{version}/Yammer-#{version}.dmg",
      verified: "yammerdesktopapp.blob.core.windows.net/binaries/dist/"
  name "Yammer"
  homepage "https://support.office.com/en-us/article/Yammer-for-Windows-and-Mac-50920c05-cbfc-4f11-8503-e20fb2e623a5"

  livecheck do
    url "https://aka.ms/yammer_desktop_mac"
    strategy :header_match
  end

  app "Yammer.app"
end
