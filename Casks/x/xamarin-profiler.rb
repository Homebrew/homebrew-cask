cask "xamarin-profiler" do
  version "1.6.13,11"
  sha256 "d190fb22d921945a613b2b8b013cfe4cd775401e98d3350373852f3702e28ce2"

  url "https://dl.xamarin.com/profiler/profiler-mac-#{version.csv.first}-#{version.csv.second}.pkg",
      verified: "dl.xamarin.com/profiler/"
  name "Xamarin Profiler"
  desc "Mono log profiler graphical interface"
  homepage "https://learn.microsoft.com/en-us/xamarin/tools/profiler/?tabs=macos"

  livecheck do
    url :homepage
    regex(/href=.*?profiler[._-]mac[._-]v?(\d+(?:\.\d+)+)-(\d+)\.pkg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match.first},#{match.second}" }
    end
  end

  pkg "profiler-mac-#{version.csv.first}-#{version.csv.second}.pkg"

  uninstall pkgutil: "com.xamarin.profiler"
end
