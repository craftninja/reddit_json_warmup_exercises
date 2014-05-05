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
    all_images = []
    @data['data']['children'].each do |child|
      all_images << child['data']['url']
    end
    all_images
  end

  # fetch only the images that begin with `http://i.imgur.com`
  def only_imgur_images
    all_images = []
    @data['data']['children'].each do |child|
      url=child['data']['url']
      all_images << url if url.slice(0..17) == 'http://i.imgur.com'
    end
    all_images
  end
end
