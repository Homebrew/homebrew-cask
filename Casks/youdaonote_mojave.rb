cask 'youdaonote_mojave' do
  version :latest
  sha256 :no_check

  url 'http://download.ydstatic.com/notewebsite/downloads/YoudaoNote_mojave.dmg'
  name '有道云笔记'
  homepage 'https://note.youdao.com/index.html'

  depends_on macos: '>= :mojave'

  app 'YoudaoNote.app'
end
