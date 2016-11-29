cask 'terminology' do
  version :latest
  sha256 :no_check

  url 'http://media.agiletortoise.com/Terminology-for-OS-X/Terminology-for-OS-X.zip'
  name 'terminology'
  homepage 'https://agiletortoise.com/terminology/mac/'

  dictionary 'Terminology-for-OS-X/Terminology.dictionary'
end
