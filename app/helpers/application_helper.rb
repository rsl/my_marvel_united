module ApplicationHelper
  def fa_icon_tag(*strings, **extras)
    klass = strings.map do |string|
      "fa-#{ string }"
    end
    tag.i **extras.merge(class: klass)
  end

  def hero_image_tag(hero)
    image_tag @hero.card.variant(resize_to_fill: [250, 400, { crop: :centre }]), class: 'card'
  end
end
