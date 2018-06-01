package com.redis.IRedisService;

/**
 * Created by zj on 2018/6/1.
 */
/**
 *
 * @author vic
 * @desc redis service
 */

import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public interface IRedisService {

    public Jedis getResource();

    public void returnResource(Jedis jedis);

    public void set(String key, String value);

    public String get(String key);

}