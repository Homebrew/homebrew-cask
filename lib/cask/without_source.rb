class Cask::WithoutSource < Cask
  def destination_path
    caskroom_path.children.first
  end

  def to_s
    "#{title} (!)"
  end

  def installed?
    caskroom_path.exist?
  end
end
