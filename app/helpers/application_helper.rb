module ApplicationHelper
  def link_to_navbar_item(text, path)
    classes = %w[navbar-item]
    classes << 'is-active' if current_page?(path)
    link_to text, path, class: classes
  end

  def hero_icon_tag(**extras)
    fa_icon_tag 'face-smile-halo', **extras.merge(title: 'Hero')
  end

  def villain_icon_tag(**extras)
    fa_icon_tag 'face-smile-horns', **extras.merge(title: 'Villain')
  end

  def fa_icon_tag(*strings, **extras)
    klass = strings.map do |string|
      "fa-#{ string }"
    end
    klass << 'fa-duotone'
    tag.i **extras.merge(class: klass)
  end

  def card_image_tag(cardable)
    height = 400
    width = 250
    image_tag(
      cardable.card.variant(resize_to_fill: [width, height, { crop: :centre }]),
      height: height,
      width: width,
      class: 'card',
    )
  end
end
