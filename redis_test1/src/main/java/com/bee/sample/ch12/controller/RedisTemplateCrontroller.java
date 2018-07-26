package com.bee.sample.ch12.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.hash.ObjectHashMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.StringRedisSerializer;
@Controller
@RequestMapping("/redis") 
public class RedisTemplateCrontroller {

	@Autowired
	@Qualifier("redisTemplate")
	private RedisTemplate redisTemplate;

	@Autowired(required = false)
	public void setRedisTemplate(RedisTemplate redisTemplate) {
		RedisSerializer stringSerializer = new StringRedisSerializer();
		redisTemplate.setKeySerializer(stringSerializer);
		redisTemplate.setValueSerializer(stringSerializer);
		redisTemplate.setHashKeySerializer(stringSerializer);
		redisTemplate.setHashValueSerializer(stringSerializer);
		this.redisTemplate = redisTemplate;
	}

	@RequestMapping("/simpleset.html") 
	public @ResponseBody String simpleSet(){
		redisTemplate.opsForValue().set("key-0","hello");
		redisTemplate.opsForValue().set("key-1", User.getSampleUser().toString());
		return "success";
	} 
	
	@RequestMapping("/simpleget.html") 
	public @ResponseBody String simpleGet(){
		String value = (String)redisTemplate.opsForValue().get("key-0");
		User uer = (User)redisTemplate.opsForValue().get("key-1");
		return "success";
		
	} 
	
	public static class User implements java.io.Serializable{
		int id ;
		String name ;
		Date date = new Date();
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public Date getDate() {
			return date;
		}
		public void setDate(Date date) {
			this.date = date;
		}
		public static User getSampleUser(){
			User user = new User();
			user.setId(123);
			user.setName("abc");
			return user;
		}
		public String toString(){
			return "{"+ "\"name\":"+ name + "}";
		}
		
	}
	
	
	
	
	
}
