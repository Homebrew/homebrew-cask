cask 'yabumi' do
  version :latest
  sha256 :no_check

  url 'https://yabumi.cc/download/Yabumi.dmg'
  name 'Yabumi'
  homepage 'https://yabumi.cc/'
  license :gpl

  app 'Yabumi.app'
end
