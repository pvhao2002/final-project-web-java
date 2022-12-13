
$ (function() {
    $ ("#rating").rateYo({
        rating: 0,
        numStars: 5,
        maxValue: 5,
        halfStart: true,
        onChange: function(rating, rateYoInstance){
            $('#hdrating').val(rating);
        }
    });
});