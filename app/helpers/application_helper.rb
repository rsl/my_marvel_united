module ApplicationHelper
  def fa_icon_tag(*strings, **extras)
    klass = strings.map do |string|
      "fa-#{ string }"
    end
    tag.i **extras.merge(class: klass)
  end

  def card_image_tag(cardable)
    image_tag cardable.card.variant(resize_to_fill: [250, 400, { crop: :centre }]), class: 'card'
  end
end
