module ApplicationHelper
  def default_meta_tags
    {
      site: 'ゆだねこ診断',
      description: '2択で迷っているとき、ネコにゆだねると、どちらか判断するサービス',
      charset: 'utf-8',
      icon: [
        { href: image_url('favicon.png'), type: 'image/png' },
        { href: image_url('favicon.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' }
      ],
      og: {
        site_name: :site,
        title: :site,
        type: 'website',
        description: :description,
        url: request.url,
        image: image_url('twitter_card.png'),
        locale: 'ja_JP'
      },
      twitter: {
        card: 'summary_large_image',
        image: image_url('twitter_card.png'),
        site: '@_taaaaiki'
      }
    }
  end
end
