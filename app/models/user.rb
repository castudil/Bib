class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  validates :password, presence: true, :on => :create

  has_attached_file :avatar, :styles => { :medium => "180x260>" },:default_url => "user-default.png"  ,  :content_type => ["image/jpg", "image/gif", "image/png", "image/jpeg"]
  validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/, /jpg\Z/]

  def active_for_authentication? 
    super && approved? 
  end 

  def inactive_message 
    if !approved? 
      :not_approved 
    else 
      super # Use whatever other message 
    end 
  end

  def fullname
    fullname = "#{name} #{last_name}"
  end


end
