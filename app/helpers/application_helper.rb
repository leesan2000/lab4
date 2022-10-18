module ApplicationHelper
    def es_twittero(monster)
        if(Tweet.where(monster_id: monster.id).count > 1)
            "Twittero destacado"
        end
    end
end