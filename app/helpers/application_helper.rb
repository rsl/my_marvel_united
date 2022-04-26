module ApplicationHelper
  def hero_image_tag(hero)
    image_tag @hero.card.variant(resize_to_fit: [300, 300]), class: 'card'
  end
end
