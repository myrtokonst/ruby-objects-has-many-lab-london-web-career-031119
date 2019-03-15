require "pry"
class Author 
  attr_accessor :name, :posts 
  @@all = []
    def initialize (name)
      @name = name 
      @posts = []
      @@all << self
    end 
    
    
    def add_post(post)
      @posts << post
      post.author = self 
    end 
    
     def posts
      @posts 
     end 
    
    def add_post_by_title (post_name)
      post = Post.new(post_name)
      @posts << post 
      post.author = self 
    end 
    
    def self.post_count 
      @@all.map {|post| post.posts}.flatten.compact.length
    end
    
end 