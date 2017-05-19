cask 'thrustshell' do
  version '0.7.6'
  sha256 '9ac1d40a1cac913620eab21c2ff6dd68d75a26b14417f758e681309b194b63b7'

  url "https://github.com/breach/thrust/releases/download/v#{version}/thrust-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/breach/thrust/releases.atom',
          checkpoint: '241c042518d4a3e284161cde7d17da48a757f9c80902cfa9577d4509e65effaf'
  name 'thrust'
  homepage 'https://github.com/breach/thrust'

  app 'ThrustShell.app'
end
