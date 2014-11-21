class Cask::WithoutSource < Cask
  def staged_path
    caskroom_path.children.first
  end

  def to_s
    "#{title} (!)"
  end

  def installed?
    caskroom_path.exist?
  end
end
