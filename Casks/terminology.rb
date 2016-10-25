cask 'terminology' do
  version :latest
  sha256 :no_check

  url 'http://media.agiletortoise.com/Terminology-for-OS-X/Terminology-for-OS-X.zip'
  name 'terminology'
  homepage 'https://agiletortoise.com/terminology/mac/'

  artifact 'Terminology-for-OS-X/Terminology.dictionary', target: "#{ENV['HOME']}/Library/Dictionaries/Terminology.dictionary"

  caveats <<-EOS.undent
    To activate, open Dictionary.app and check "Terminology" in preferences.
  EOS
end
