class Merchantid < ApplicationRecord
    mount_uploader :idproof, ImageUploader
    belongs_to :user
    enum status: { pending: 'pending', accept: 'accept', Reject:'Peject' },_default: :pending
end
