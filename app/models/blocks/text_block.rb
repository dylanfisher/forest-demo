class TextBlock < BaseBlock
  def self.permitted_params
    [:title, :text]
  end

  def self.display_name
    'Text Block'
  end

  def self.description
    'A simple text block'
  end

  def self.display_icon
    'glyphicon glyphicon-align-left'
  end
end
