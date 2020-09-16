cask "webplotdigitizer" do
  version "4.3"
  sha256 "f0810ab5be0ad5900a7bf6700687d0652e0f57fae3083fd5f591456d8800d0c1"

  url "https://automeris.io/downloads/WebPlotDigitizer-#{version}-darwin-x64.zip"
  appcast "https://github.com/ankitrohatgi/WebPlotDigitizer/releases.atom"
  name "WebPlotDigitizer"
  homepage "https://automeris.io/WebPlotDigitizer/"

  app "WebPlotDigitizer-#{version}-darwin-x64/WebPlotDigitizer-#{version}.app"
end
