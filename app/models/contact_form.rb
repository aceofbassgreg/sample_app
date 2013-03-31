class ContactForm
  include ActiveModel::Validations
  include ActiveModel::Conversion

  attr_accessor :name, :email, :body
  validates_presence_of :name, :email, :body
  validates :email, format: { :with => %r{.+@.+\..+} }

  def initialize(attributes = {})
  	attributes.each do |k, v|
  	  send("#{k}=", v)
  	end
  end

  def persisted?
  	false
  end
end