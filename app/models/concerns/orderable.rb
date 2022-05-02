module Orderable
  def next
    self.class.where('name > ?', name).order(:name).first
  end

  def previous
    self.class.where('name < ?', name).order(:name).last
  end
end
