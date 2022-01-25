cask "xamarin-profiler" do
  version "1.6.13,11"
  sha256 "d190fb22d921945a613b2b8b013cfe4cd775401e98d3350373852f3702e28ce2"

  url "https://dl.xamarin.com/profiler/profiler-mac-#{version.csv.first}-#{version.csv.second}.pkg"
  appcast "https://docs.microsoft.com/en-gb/xamarin/tools/profiler/release-notes/#{version.major_minor}/#{version.csv.first}"
  name "Xamarin Profiler"
  homepage "https://developer.xamarin.com/releases/profiler/"

  pkg "profiler-mac-#{version.csv.first}-#{version.csv.second}.pkg"

  uninstall pkgutil: "com.xamarin.profiler"
end
