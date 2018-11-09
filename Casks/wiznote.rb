cask 'wiznote' do
  version '2.6.5,2018-11-02'
  sha256 '45971023281a486d9e8f15dc249c15eeb296a372ad0f155e864e5b6c0bd50426'

  url "https://get.wiz.cn/wiznote-macos-#{version.after_comma}.dmg"
  name 'WizNote'
  homepage 'https://www.wiz.cn/wiznote-mac.html'

  app 'WizNote.app'
end
