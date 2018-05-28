class Service < ApplicationRecord

  mount_uploader :image, ImageUploader
  belongs_to :vendor
  belongs_to :user
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings

  validates :image, file_size: { less_than_or_equal_to: 10.megabytes }, file_content_type: { allow: ['image/jpeg', 'image/png', 'image/jpg'] }
  validates :name, presence: true
  validates :description, presence: true
  validates :hours, presence: true
  validates :minutes, presence: true
  validate :cost_options


  def cost_options
    errors.add(:base, 'Please fill one of the price fields.') if cost_absolute.blank? && cost_range.blank?
    errors.add(:base, 'Please fill out only one of the price fields.') if !cost_absolute.blank? && !cost_range.blank?
  end 

  def self.tagged_with(name)
    Tag.find_by!(name: name).services
  end

  def self.tag_counts
    Tag.select('tags.*, count(taggings.tag_id) as count').joins(:taggings).group('taggings.tag_id')
  end

  def tag_list
    tags.map(&:name).join(', ')
  end

  def tag_list=(names)
    self.tags = names.split(',').map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end 
end
