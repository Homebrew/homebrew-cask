cask "todos" do
  version "1.5"
  sha256 :no_check

  url "http://dbachrach.com/opensoft/downloads/apps/Todos.dmg"
  name "Todos"
  homepage "http://dbachrach.com/opensoft/index.php?page=Todos"

  livecheck do
    url "http://www.dbachrach.com/opensoft/appcasts/Todos.xml"
    strategy :sparkle
  end

  app "Todos.app"
end
