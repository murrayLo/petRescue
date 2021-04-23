require "image_processing/mini_magick"

class ImageUploader < Shrine

    #resize images : code from https://shrinerb.com/docs/processing
    Attacher.derivatives do |image|
        magick = ImageProcessing::MiniMagick.source(image)

        {
            large: magick.resize_to_limit!(800, 800),
            medium: magick.resize_to_limit!(500, 500),
            small: magick.resize_to_limit!(200, 200),
        }
    end

    #add validation for file uploads
    Attacher.validate do
        #must be of type jpeg, png or webp
        validate_mime_type %w[image/jpeg image/png image/webp]
        #must be no more than 5mb
        validate_max_size 5*1024*1024
    end

end