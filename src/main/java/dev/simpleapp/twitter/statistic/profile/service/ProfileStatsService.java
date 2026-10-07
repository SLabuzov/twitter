package dev.simpleapp.twitter.statistic.profile.service;

public interface ProfileStatsService {
    void initializeProfileStats(long profileId);
    void onSubscribed(long followerId, long followedId);
    void onUnsubscribed(long followerId, long followedId);
    void onTweetAdded(long profileId);
    void onTweetDeleted(long profileId);
}
