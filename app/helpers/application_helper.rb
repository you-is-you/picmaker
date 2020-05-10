module ApplicationHelper
    def default_meta_tags
    {
        site: 'こめんとメーカー',
        reverse: true,
        separator: '|',
        og: defalut_og,
        twitter: default_twitter_card,
        canonical: 'https://www.commentmaker.net/'
    }
    end

    private

    def defalut_og
    {
        title: :full_title,          # :full_title とすると、サイトに表示される <title> と全く同じものを表示できる
        description: :description,   # 上に同じ
        url: request.url,
        image: 'https://www.commentmaker.net/image_picture.png'
    }
    end

    def default_twitter_card
    {
        card: 'summary_large_image', # または summary
        site: '@commentmaker'            # twitter ID
    }
    end
end