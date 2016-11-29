cask 'thrustshell' do
  version '0.7.6'
  sha256 '9ac1d40a1cac913620eab21c2ff6dd68d75a26b14417f758e681309b194b63b7'

  url "https://github.com/breach/thrust/releases/download/v#{version}/thrust-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/breach/thrust/releases.atom',
          checkpoint: '935729b52959855a83ee7c4657f7588ab20faac0f51768f881d8374216cdacde'
  name 'thrust'
  homepage 'https://github.com/breach/thrust'

  app 'ThrustShell.app'
end
