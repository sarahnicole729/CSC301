SELECT title, price, review
FROM final_videogames
JOIN final_game_reviews
    ON final_game_reviews.sku = final_videogames.sku