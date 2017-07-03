class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def title_present?
    title_ja.present? || title_en.present?
  end

  def description_present?
    description_ja.present? || description_en.present?
  end

  def name_present?
    name_ja.present? || name_en.present?
  end

  def biography_present?
    biography_ja.present? || biography_en.present?
  end

  def locale(column)
    if self.send("#{column}_#{I18n.locale}").present?
      self.send("#{column}_#{I18n.locale}")
    else
      self.send("#{column}_#{I18n.default_locale}")
    end
  end
end
