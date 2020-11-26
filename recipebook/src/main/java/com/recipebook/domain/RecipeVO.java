package com.recipebook.domain;

import java.util.Date;

public class RecipeVO {

//	CREATE TABLE recipe (
//			recipe_id INT(11) NOT NULL AUTO_INCREMENT,
//			title VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
//			food_name VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
//			username VARCHAR(30) NOT NULL COLLATE 'utf8_general_ci',
//			date DATETIME NULL DEFAULT current_timestamp(),
//			ingredient INT(11) NOT NULL,
//			time INT(11) NOT NULL,
//			content TEXT(65535) NOT NULL COLLATE 'utf8_general_ci',
//			hits INT(11) NOT NULL,
//			thumbImg(200),
//			PRIMARY KEY (recipe_id) USING BTREE,
//			INDEX username (username) USING BTREE,
//			CONSTRAINT username FOREIGN KEY (username) REFERENCES recipebook.user (username) ON UPDATE CASCADE ON DELETE RESTRICT
//		)
//		COLLATE='utf8_general_ci'
//		ENGINE=InnoDB
//		;

	private int recipe_id;
	private String title;
	private String sub_title;
	private String food_name;
	private String username;
	private Date date;
	private int time;
	private String content;
	private int hits;
	private String thumbImg;
	
	public int getRecipe_id() {
		return recipe_id;
	}
	public void setRecipe_id(int recipe_id) {
		this.recipe_id = recipe_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSub_title() {
		return sub_title;
	}
	public void setSub_title(String sub_title) {
		this.sub_title = sub_title;
	}
	public String getFood_name() {
		return food_name;
	}
	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public String getThumbImg() {
		return thumbImg;
	}
	public void setThumbImg(String thumbImg) {
		this.thumbImg = thumbImg;
	}
}
