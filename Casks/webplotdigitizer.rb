cask 'webplotdigitizer' do
  version '4.2'
  sha256 '8d9bab2fb0a664950ca618dd78b1649b0a7fe5a96e49e1dde2cc9480f71d0207'

  url "https://automeris.io/downloads/WebPlotDigitizer-#{version}-darwin-x64.zip"
  appcast 'https://github.com/ankitrohatgi/WebPlotDigitizer/releases.atom'
  name 'WebPlotDigitizer'
  homepage 'https://automeris.io/WebPlotDigitizer/'

  app "WebPlotDigitizer-#{version}-darwin-x64/WebPlotDigitizer-#{version}.app"
end
