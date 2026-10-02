cask "windows-app" do
  version "11.4.3"
  sha256 "9dc0e5f4abecfe9dc02d45fafc9813881bd24ecb84125eabe522b01b11a039ca"

  url "https://res.public.onecdn.static.microsoft/mro1cdnstorage/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/Windows_App_#{version}_installer.pkg"
  name "Windows App"
  desc "Connect to Windows"
  homepage "https://aka.ms/WindowsApp"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=868963"
    strategy :header_match
  end

  depends_on macos: :sonoma

  pkg "Windows_App_#{version}_installer.pkg",
      choices: [
        {
          "choiceIdentifier" => "com.microsoft.autoupdate", # Office16_autoupdate_updater.pkg
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil: "com.microsoft.rdc.macos"

  zap trash: [
    "~/Library/Application Scripts/com.microsoft.rdc.macos",
    "~/Library/Containers/com.microsoft.rdc.macos",
    "~/Library/Group Containers/UBF8T346G9.com.microsoft.rdc",
  ]
end
