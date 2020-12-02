cask "webplotdigitizer" do
  version "4.3"
  sha256 "117866ef65bc7d1644159657cffc5c3e54040b8d454011eaf197375b084309a7"

  url "https://automeris.io/downloads/WebPlotDigitizer-#{version}-darwin-x64.zip"
  appcast "https://github.com/ankitrohatgi/WebPlotDigitizer/releases.atom"
  name "WebPlotDigitizer"
  homepage "https://automeris.io/WebPlotDigitizer/"

  app "WebPlotDigitizer-#{version}-darwin-x64/WebPlotDigitizer-#{version}.app"
end
