class Client < ApplicationRecord
	has_many :enquiries
	has_many :listings 
	has_secure_password
	enum role: [:normal, :admin]
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  	# :url  => ":s3_domain_url",
   #  :path => "public/avatars/:id/:style_:basename.:extension",
   #  :storage => :fog,
   #  :fog_credentials => {
   #      provider: 'AWS',
   #      aws_access_key_id: "AKIAIRPKLJNSDO23425",
   #      aws_secret_access_key: "9LXV/GWagu/CJ4DoMLKSmdasdaZeUyuax/Ei92hL7"
   #  },
   #  fog_directory: "rails-demo-env"
end
