require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'create a new post with valid attributes' do
    assert_difference -> { Post.count }, 1 do
      Post.create(title: '글제목', body: '글내용')
    end
  end

  test 'cannot create a new post without title' do
    assert_no_difference -> { Post.count } do
      Post.create(title: '', body: '글내용')
    end
  end

  test 'cannot create a new post without body' do
    assert_no_difference -> { Post.count } do
      Post.create(title: '글제목', body: '')
    end
  end

  test 'cannot create a new post without title and body' do
    assert_no_difference -> { Post.count } do
      Post.create(title: '', body: '')
    end
  end
end
