cask 'thrustshell' do
  version '0.7.6'
  sha256 '9ac1d40a1cac913620eab21c2ff6dd68d75a26b14417f758e681309b194b63b7'

  url "https://github.com/breach/thrust/releases/download/v#{version}/thrust-v#{version}-darwin-x64.zip"
  name 'thrust'
  homepage 'https://github.com/breach/thrust'
  license :mit

  app 'ThrustShell.app'
end
