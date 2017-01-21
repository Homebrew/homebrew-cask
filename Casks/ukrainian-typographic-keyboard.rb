cask 'ukrainian-typographic-keyboard' do
  version '1.0.0'
  sha256 'ad3d4d57048cea15a66853cadff06a04e0be3c63cb44cb415d1dfa8f1deddc3e'

  url "https://github.com/denysdovhan/ukrainian-typographic-keyboard/releases/download/v#{version}/ukrainian-typographic-keyboard.dmg"
  appcast 'https://github.com/denysdovhan/ukrainian-typographic-keyboard/releases.atom',
          checkpoint: '43397a9620d8fc34a55a68c7ebe8da2318b2181375015f97368020a905c3774b'
  name 'Ukrainian Typographic Keyboard'
  homepage 'https://github.com/denysdovhan/ukrainian-typographic-keyboard/'

  artifact 'ukrainian-typographic-keyboard.bundle', target: "#{ENV['HOME']}/Library/Keyboard Layouts/ukrainian-typographic-keyboard.bundle"
end
