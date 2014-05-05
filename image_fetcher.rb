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
    @data['data']['children'].reduce([]) do |all_images, child|
      all_images << child['data']['url']
      all_images
    end
  end

  def only_imgur_images
    @data['data']['children'].reduce([]) do |all_images, child|
      url = child['data']['url']
      all_images << url if url.slice(0..17) == 'http://i.imgur.com'
      all_images
    end
  end

end
