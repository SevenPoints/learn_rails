class Contact
  
  include ActiveModel::Model
  attr_accessor :name, :string
  attr_accessor :email, :string
  attr_accessor :content, :string
  
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :content
  
  validates_format_of :email, :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
  
  validates_length_of :content, :maximum => 500


end