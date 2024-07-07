cask "xcodeclangformat" do
  version "1.2.1"
  sha256 "efc9e926db308977d9ad1ce39925b5c3270eb05aec97a4ae988250d31619d97c"

  url "https://github.com/mapbox/XcodeClangFormat/releases/download/v#{version}/XcodeClangFormat.zip"
  name "XcodeClangFormat"
  desc "Format code in Xcode with clang-format"
  homepage "https://github.com/mapbox/XcodeClangFormat"

  app "XcodeClangFormat.app"

  zap trash: [
    "~/Library/Application Scripts/com.mapbox.XcodeClangFormat",
    "~/Library/Application Scripts/com.mapbox.XcodeClangFormat.clang-format",
    "~/Library/Containers/com.mapbox.XcodeClangFormat",
    "~/Library/Containers/com.mapbox.XcodeClangFormat.clang-format",
    "~/Library/Group Containers/XcodeClangFormat",
  ]

  caveats do
    requires_rosetta
  end
end
