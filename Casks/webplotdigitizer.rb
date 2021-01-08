cask "webplotdigitizer" do
  version "4.4"
  sha256 "e9ee0ba2b317b81205593a7d1688a165ba10806465308c505e0534eb28e9d0c3"

  url "https://automeris.io/downloads/WebPlotDigitizer-#{version}-darwin-x64.zip"
  name "WebPlotDigitizer"
  desc "Extract numerical data from plot images"
  homepage "https://automeris.io/WebPlotDigitizer/"

  livecheck do
    url "https://automeris.io/WebPlotDigitizer/download.html"
    strategy :page_match
    regex(%r{href=.*?/WebPlotDigitizer-(\d+(?:\.\d+)*)-darwin-x64\.zip}i)
  end

  app "WebPlotDigitizer-#{version}-darwin-x64/WebPlotDigitizer-#{version}.app"
end
