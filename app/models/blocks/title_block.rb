class TitleBlock < BaseBlock
  def self.permitted_params
    [:title]
  end

  def self.display_name
    'Title Block'
  end

  def self.description
    'A general-purpose title block'
  end

  def self.display_icon_name
    'type-h1'
  end
end
