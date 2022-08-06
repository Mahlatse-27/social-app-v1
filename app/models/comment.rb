class Comment
    belongs_to :post
    attr_accessor :id, :postId, :name, :email, :body


    def initialize(id:, postId:, name:, email:, body:)
        @id = id
        @postId = postId
        @name = name
        @email = email
        @body = body
    end

    
end

# {
#     "postId": 1,
#     "id": 1,
#     "name": "id labore ex et quam laborum",
#     "email": "Eliseo@gardner.biz",
#     "body": "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"
#   },