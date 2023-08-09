cask "webplotdigitizer" do
  version "4.6"
  sha256 "53fc0fc44bc9ecffc10a40e502213fee143ed627147817320b4ba35a4eccd42a"

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
