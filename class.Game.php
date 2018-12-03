<?php

class Game {
    protected $sku;
    protected $overall_rating;
    //protected $;
    
    function __construct($sku, $overall_rating){
        $this->sku = $sku;
        $this->overall_rating = $overall_rating;
        //echo "the constructor for the game class ran";
    }
    
    
    function getRating() {
        return $this->overall_rating;
    }
    
    static function getSku() {
        return array('6191208', '6216330', '5723319','6259690');
    }
}