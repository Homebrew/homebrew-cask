cask 'vscode' do
  version '1.8.1'
  sha256 '9202c85669853b07d1cbac9e6bcb01e7c08e13fd2a2b759dd53994e0fa51e7a1'

  # azurewebsites.net was verified as official when first introduced to the cask
  url "https://vscode-update.azurewebsites.net/#{version}/darwin/stable"
  name 'VSCode'
  name 'Visual Studio Code'
  homepage 'http://code.visualstudio.com/'

  app 'Visual Studio Code.app'
end
