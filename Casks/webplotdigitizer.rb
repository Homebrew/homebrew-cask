cask 'webplotdigitizer' do
  version '4.1'
  sha256 '76718f04d95aadcc5e41e4d1e7e7a602aa82ed165a49c28c48f50695ee376ee3'

  url "https://automeris.io/downloads/WebPlotDigitizer-#{version}-darwin-x64.zip"
  appcast 'https://github.com/ankitrohatgi/WebPlotDigitizer/releases.atom'
  name 'WebPlotDigitizer'
  homepage 'https://automeris.io/WebPlotDigitizer/'

  app 'WebPlotDigitizer-darwin-x64/WebPlotDigitizer.app'
end
