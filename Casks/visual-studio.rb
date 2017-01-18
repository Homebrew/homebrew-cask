cask 'visual-studio' do
  version '2017-01-14'
  sha256 '44c7952dd2c8b44b8715f8bb33868448a3433506a8156ce5513903f7cc154d51'

  # xamarin.azureedge.net was verified as official when first introduced to the cask
  url "https://xamarin.azureedge.net//VsMacInstaller/#{version}/VisualStudioforMacPreviewInstaller.dmg"
  name 'Visual Studio for Mac'
  homepage 'https://www.visualstudio.com/vs/visual-studio-mac/'

  installer manual: 'Install Visual Studio for Mac Preview.app'

  uninstall delete: '/Applications/Visual Studio.app'
end
