class Cask::WithoutSource < Cask
  def staged_path
    caskroom_path.children.first
  end

  # todo transitional method, removeme after DSL 1.0
  def destination_path
    staged_path
  end

  def to_s
    "#{title} (!)"
  end

  def installed?
    caskroom_path.exist?
  end
end
