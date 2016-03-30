cask 'terminology' do
  version :latest
  sha256 :no_check

  url 'http://media.agiletortoise.com/Terminology-for-OS-X/Terminology-for-OS-X.zip'
  name 'terminology'
  homepage 'https://agiletortoise.com/terminology/mac/'
  license :gratis

  installer script: 'Terminology-for-OS-X/Install.command', sudo: false

  uninstall delete: Pathname.new(File.expand_path('~')).join('Library/Dictionaries/Terminology.dictionary')
end
