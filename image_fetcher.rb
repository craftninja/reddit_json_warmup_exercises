# update the methods below to make the test pass.

class ImageFetcher

  def initialize(data)
    @data = data
  end

  def count_children
    @data['data']['children'].size
  end

  def first_child
    @data['data']['children'].first['data']
  end

  def all_images
    @data['data']['children'].map {|child| child['data']['url']}
  end

  def only_imgur_images
    all_images.select do |image|
      image.include? 'http://i.imgur.com'
    end
  end

end
