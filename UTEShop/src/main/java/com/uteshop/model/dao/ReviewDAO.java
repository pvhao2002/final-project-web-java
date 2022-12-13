package com.uteshop.model.dao;

import com.uteshop.model.entity.Brand;
import com.uteshop.model.entity.Review;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ReviewDAO extends AbstractDAO<Review> implements GenericDAO<Review> {
    @Override
    public Review create(Review review) {return super.create(review);}

    @Override
    public Review update(Review review) {return super.update(review);}

    @Override
    public void delete(Object reviewId) {
        super.delete(Review.class, reviewId);
    }

    @Override
    public int count() {
        return super.countWithNamedQuery("Review.countAll");
    }

    @Override
    public Review find(Object reviewId) {
        return super.find(Review.class, reviewId);
    }

}
