class Post
    attr_accessor :id, :title, :body

    def initialize(id:, title:, body:)
        @id = id
        @title = title
        @body = body
    end


    def self.all
        data = []
        temp_data = GetData.new(path: 'posts').call


        temp_data.each do |post|
            data.append(Post.new(
                id: post['id'],
                title: post['title'],
                body: post['body']
            ))
        end

        data
    end

    # def self.get(id)
    #     temp_post = GetData.new(path_link: "posts/#{id}").call

    #     post = Post.new(id: temp_post['id'], title: temp_post['title'], body: temp_post['body'] )
    # end
end