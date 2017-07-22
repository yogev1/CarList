class CarImage < ApplicationRecord
	
	belongs_to :car

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  	# configuring AWS

	    storage: :s3,
	    s3_credentials: {
	    bucket: ENV.fetch('S3_BUCKET_NAME'),
	    access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'),
	    secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
	    s3_region: ENV.fetch('AWS_REGION'),
	    
	  }

end
