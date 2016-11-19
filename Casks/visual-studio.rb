cask 'visual-studio' do
  version 'Preview 1 (7.0 build 347),2016-11-16'
  sha256 '7c674f7114e6a6532d6498dd8963cf1b5916badd694f251a11edf3024809bf48'

  # xamarin.azureedge.net was verified as official when first introduced to the cask
  url "https://xamarin.azureedge.net/VsMacInstaller/#{version.after_comma}/VisualStudioforMacPreviewInstaller.dmg"
  name 'Visual Studio for Mac'
  homepage 'https://www.visualstudio.com/vs/visual-studio-mac/'

  installer manual: 'Install Visual Studio for Mac Preview.app'

  uninstall delete: '/Applications/Visual Studio.app'
end
