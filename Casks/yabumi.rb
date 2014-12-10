cask :v1 => 'yabumi' do
  version :latest
  sha256 :no_check

  url 'https://yabumi.cc/download/Yabumi.dmg'
  homepage 'https://yabumi.cc/'
  license :unknown    # todo: improve this machine-generated value

  app 'Yabumi.app'
end
