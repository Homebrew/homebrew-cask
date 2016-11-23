cask 'visual-studio' do
  version '2016-11-16-2'
  sha256 '0a18e2ff4ab91b87b6be8c3fa78fcb0d8a44e6685a96071b9ec09cc5d7028160'

  # xamarin.azureedge.net was verified as official when first introduced to the cask
  url "https://xamarin.azureedge.net/VsMacInstaller/#{version}/VisualStudioforMacPreviewInstaller.dmg"
  name 'Visual Studio for Mac'
  homepage 'https://www.visualstudio.com/vs/visual-studio-mac/'

  installer manual: 'Install Visual Studio for Mac Preview.app'

  uninstall delete: '/Applications/Visual Studio.app'
end
