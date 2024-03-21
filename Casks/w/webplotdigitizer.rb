cask "webplotdigitizer" do
  version "4.7"
  sha256 "1175eb93a78844e6cb9153856bb3a648c190eebc20347250eb23c4d049507fbf"

  url "https://automeris.io/downloads/WebPlotDigitizer-#{version}-darwin-x64.zip"
  name "WebPlotDigitizer"
  desc "Extract numerical data from plot images"
  homepage "https://automeris.io/WebPlotDigitizer.html"

  livecheck do
    url "https://automeris.io/download.html"
    regex(%r{href=.*?/WebPlotDigitizer-(\d+(?:\.\d+)*)-darwin-x64\.zip}i)
  end

  app "WebPlotDigitizer-#{version}-darwin-x64/WebPlotDigitizer-#{version}.app"
end
