cask 'webplotdigitizer' do
  version '4.2'
  sha256 'bbaf390df2732260313c898a9f12c812b9174089277d6a6fd625d44c1ca7d6f9'

  url "https://automeris.io/downloads/WebPlotDigitizer-#{version}-darwin-x64.zip"
  appcast 'https://github.com/ankitrohatgi/WebPlotDigitizer/releases.atom'
  name 'WebPlotDigitizer'
  homepage 'https://automeris.io/WebPlotDigitizer/'

  app "WebPlotDigitizer-#{version}-darwin-x64/WebPlotDigitizer-#{version}.app"
end
