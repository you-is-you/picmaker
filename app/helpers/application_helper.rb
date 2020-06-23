module ApplicationHelper
    def default_meta_tags
    {
        site: 'こめんとメーカー',
        reverse: true,
        index: true,
        follow: true,
        separator: '|',
        og: defalut_og,
        twitter: default_twitter_card,
        canonical: 'https://www.commentmaker.net/'
    }
    end

    def defalut_og
    {
        title: 'こめんとメーカー',          # :full_title とすると、サイトに表示される <title> と全く同じものを表示できる
        description: :description,   # 上に同じ
        url: request.url,
        image: @twitter_ogp_image
    }
    end

    def default_twitter_card
    {
        card: 'summary_large_image',
        site: '@commentmakernet',           # twitter ID
        image: @twitter_ogp_image
    }
    end
end