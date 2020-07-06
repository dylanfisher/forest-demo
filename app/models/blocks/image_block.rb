class ImageBlock < BaseBlock
  def self.permitted_params
    []
  end

  def self.display_name
    'Image Block'
  end

  def self.description
    'Add an image to the page'
  end

  def self.display_icon_name
    'image'
  end
end
