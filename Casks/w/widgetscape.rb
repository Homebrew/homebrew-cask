cask "widgetscape" do
  version "1.6.0,47"
  sha256 "868a6a8b90568cd9b6a95e4c92b573ebcd05a520dcdac45ada8a5eb906bbb43c"

  url "https://widgetscape.vpolabs.com/updates/macos/releases/#{version.csv.first}/#{version.csv.second}/Widgetscape-#{version.csv.first}-#{version.csv.second}.zip"
  name "Widgetscape"
  desc "Native desktop widgets on a shared grid"
  homepage "https://widgetscape.vpolabs.com/"

  livecheck do
    url "https://widgetscape.vpolabs.com/updates/macos/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}"
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Widgetscape.app"

  uninstall launchctl: "com.vpolabs.widgetscape.agent",
            quit:      "com.vpolabs.widgetscape"
end
