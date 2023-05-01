class Store < ApplicationRecord
    has_secure_password
    
    has_many :product, foreign_key: 'store_id', class_name: 'Product'
    has_many :order_item

    validates :store_name, presence: true, length: {maximum: 15}
    validates :image, presence: true
    validates :email, presence: true, uniqueness: true
    validates :total_products, presence: true

    after_create :update_store_count
    
    def update_store_count
        Admin.update(store_count: Store.count )
    end
end

    # def create
    #   # params.except(:store)
    #   @store = Store.new(store_login_params)

    #     puts('i am here')
    #     if params[:image].present?
    #       image_data = params[:image].tempfile.read
    #       cloudinary_result = Cloudinary::Uploader.upload(image_data, resource_type: :auto)
    #       image_url = cloudinary_result['secure_url']
    #       @store.image = image_url
    #     else
    #     render json: { error: 'No image' }, status: :bad_request
    #     return
    #   end
      
    #   if @store.save
    #     token = encode_token(store_id: @store.id)
    #     render json: { status: 'success', message: 'Store created', data: { token: token }, store: @store }, status: :created
    #   else
    #     render json: { status: 'Error', message: 'Email exists already' }, status: :unprocessable_entity
    #   end