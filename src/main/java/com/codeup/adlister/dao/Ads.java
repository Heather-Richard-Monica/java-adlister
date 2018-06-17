package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);


    List<Ad> searchAds(String s, String c);

    Ad findById(long id);


    Ad editAd(Ad ad);

    List<Ad> searchAds(String s);

    List<Ad> findAdbyUserID(Long userId);

    Ad findAdByID(Long id);

    void deleteAd(long id);

}
