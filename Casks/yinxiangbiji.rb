cask 'yinxiangbiji' do
  version '8.1.2_456939'
  sha256 '3857d9897bf3e7839e3ad95f657eb635bbfc4ad284203a9f251d1905d134abbf'

  url "https://cdn.yinxiang.com/mac-smd/public/YinxiangBiji_RELEASE_#{version}.dmg"
  name 'Evernote'
  name '印象笔记'
  homepage 'https://www.yinxiang.com/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app '印象笔记.app'
end
