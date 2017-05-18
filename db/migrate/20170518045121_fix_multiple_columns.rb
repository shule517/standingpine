class FixMultipleColumns < ActiveRecord::Migration[5.1]
  def change
    add_column :topics, :title_ja, :string
    add_column :topics, :title_en, :string
    add_column :topics, :sub_title_ja, :string
    add_column :topics, :sub_title_en, :string
    add_column :topics, :content_ja, :text
    add_column :topics, :content_en, :text
    remove_column :topics, :title
    remove_column :topics, :content

    add_column :artists, :name_ja, :string
    add_column :artists, :name_en, :string
    add_column :artists, :description_ja, :text
    add_column :artists, :description_en, :text
    add_column :artists, :biography_ja, :text
    add_column :artists, :biography_en, :text
    remove_column :artists, :name
    remove_column :artists, :description
    remove_column :artists, :biography

    add_column :exhibitions, :title_ja, :string
    add_column :exhibitions, :title_en, :string
    add_column :exhibitions, :sub_title_ja, :string
    add_column :exhibitions, :sub_title_en, :string
    add_column :exhibitions, :addition_ja, :string
    add_column :exhibitions, :addition_en, :string
    add_column :exhibitions, :description_ja, :text
    add_column :exhibitions, :description_en, :text
    remove_column :exhibitions, :title, :string
    remove_column :exhibitions, :sub_title, :string
    remove_column :exhibitions, :addition, :string
    remove_column :exhibitions, :description, :text

    add_column :articles, :title_ja, :string
    add_column :articles, :title_en, :string
    add_column :articles, :description_ja, :text
    add_column :articles, :description_en, :text
    remove_column :articles, :title
    remove_column :articles, :description
  end
end
