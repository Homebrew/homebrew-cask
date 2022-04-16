cask "webplotdigitizer" do
  version "4.5"
  sha256 "7cc5eaccda1d4e3cb1a53cf214eaa807feccaca4e62e2958b16342fbc4d578c7"

  url "https://automeris.io/downloads/WebPlotDigitizer-#{version}-darwin-x64.zip"
  name "WebPlotDigitizer"
  desc "Extract numerical data from plot images"
  homepage "https://automeris.io/WebPlotDigitizer/"

  livecheck do
    url "https://automeris.io/WebPlotDigitizer/download.html"
    regex(%r{href=.*?/WebPlotDigitizer-(\d+(?:\.\d+)*)-darwin-x64\.zip}i)
  end

  app "WebPlotDigitizer-#{version}-darwin-x64/WebPlotDigitizer-#{version}.app"
end
