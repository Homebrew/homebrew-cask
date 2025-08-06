cask "widgettoggler" do
  version "1.2.0"
  sha256 "4a37bd84eb391c86e80a05b3b875dae6286418f2223970dbeff03abe310b5af9"

  url "https://github.com/sieren/WidgetToggler/releases/download/#{version}/WidgetToggler_#{version.major_minor}.zip"
  name "WidgetToggler"
  desc "Tool to toggle the visibility of homescreen widgets"
  homepage "https://github.com/sieren/WidgetToggler"

  depends_on macos: ">= :sonoma"

  app "WidgetToggler.app"

  zap trash: "~/Library/Preferences/com.sieren.WidgetToggler.plist"
end
