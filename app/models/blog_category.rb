class BlogCategory < ActiveRecord::Base

  has_and_belongs_to_many :posts, :class_name => 'BlogPost'

  acts_as_indexed :fields => [:title]

  validates_presence_of :title
  validates_uniqueness_of :title

  has_friendly_id :title, :use_slug => true

end
