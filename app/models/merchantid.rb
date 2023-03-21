class Merchantid < ApplicationRecord
    mount_uploader :idproof, ImageUploader
    
    enum status: { pending: 'pending', accept: 'accept', Reject:'Peject' },_default: :pending
end
