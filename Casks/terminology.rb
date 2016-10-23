cask 'terminology' do
  version :latest
  sha256 :no_check

  url 'http://media.agiletortoise.com/Terminology-for-OS-X/Terminology-for-OS-X.zip'
  name 'terminology'
  homepage 'https://agiletortoise.com/terminology/mac/'

  installer script: 'Terminology-for-OS-X/Install.command', sudo: false

  uninstall delete: File.expand_path('~/Library/Dictionaries/Terminology.dictionary')
end
