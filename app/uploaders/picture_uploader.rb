class PictureUploader < CarrierWave::Uploader::Base
    include CarrierWave::MiniMagick
    process resize_to_limit: [400, 400]
    
    storage :file
    # Перевизначаємо каталог для вигружених файлів
    def store_dir
        "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end
    # білий список для підтримуваних розширень
    def extension_white_list
        %w(jpg jpeg gif png)
    end
end