module ApplicationHelper
  def hero_image_tag(hero)
    image_tag @hero.card.variant(resize_to_fill: [200, 300, { crop: :centre }]), class: 'card'
  end
end
