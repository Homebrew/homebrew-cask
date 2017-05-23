cask 'ukrainian-typographic-keyboard' do
  version '1.0.0'
  sha256 'ad3d4d57048cea15a66853cadff06a04e0be3c63cb44cb415d1dfa8f1deddc3e'

  url "https://github.com/denysdovhan/ukrainian-typographic-keyboard/releases/download/v#{version}/ukrainian-typographic-keyboard.dmg"
  appcast 'https://github.com/denysdovhan/ukrainian-typographic-keyboard/releases.atom',
          checkpoint: '814cdcbc789989545714e41e3ccfafdc8658491fa40b1718173b542b36cb068a'
  name 'Ukrainian Typographic Keyboard'
  homepage 'https://github.com/denysdovhan/ukrainian-typographic-keyboard/'

  artifact 'ukrainian-typographic-keyboard.bundle', target: "#{ENV['HOME']}/Library/Keyboard Layouts/ukrainian-typographic-keyboard.bundle"
end
